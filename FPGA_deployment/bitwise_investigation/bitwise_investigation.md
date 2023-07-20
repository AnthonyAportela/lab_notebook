## Background

ReLU is an activation function defined by the following piece-wise:

$$
\text{ReLU}(x) = \begin{cases} 0, & \text{if } x < 0 \\ x, & \text{if } x \geq 0 . \end{cases}
$$

It is defined in `hls4ml` in exactly that manor:

```C
template <class data_T, class res_T, typename CONFIG_T> void relu(data_T data[CONFIG_T::n_in], res_T res[CONFIG_T::n_in]) {
    #pragma HLS PIPELINE

    data_T datareg;
    for (int ii = 0; ii < CONFIG_T::n_in; ii++) {
        datareg = data[ii];
        if (datareg > 0)
            res[ii] = datareg;
        else
            res[ii] = 0;
    }
}
```

But since this is to be deployed onto an FPGA, I'm thinking we find bitwise versions of some of these functions.
And I found just that!

$$
\text{ReLU}(x) = x \& (x \gg 31) \oplus x
$$

It looks much simpler, and I naively believe it would take up less space on the FPGA.
It would be implemented as follows:

```C
template <class data_T, class res_T, typename CONFIG_T>
void relu(data_T data[CONFIG_T::n_in], res_T res[CONFIG_T::n_in]) {
    #pragma HLS PIPELINE

    data_T datareg;
    for (int ii = 0; ii < CONFIG_T::n_in; ii++) {
        datareg = data[ii];
        res[ii] = datareg & (datareg >> 31) ^ datareg;
    }
}
```


## Testing

### This here will be the baseline

#### Resource usage

| Name                | BRAM_18K   | DSP48E   | FF       | LUT     | URAM   |
| ------------------- | ---------- | -------- | -------- | ------- | ------ |
| DSP                 | -          | -        | -        | -       | -      |
| Expression          | -          | -        | 0        | 6       | -      |
| FIFO                | -          | -        | -        | -       | -      |
| Instance            | 4          | 1454     | 7579     | 79585   | -      |
| Memory              | -          | -        | -        | -       | -      |
| Multiplexer         | -          | -        | -        | 36      | -      |
| Register            | -          | -        | 3424     | -       | -      |
| Total               | 4          | 1454     | 11003    | 79627   | 0      |
| Available SLR       | 1344       | 3072     | 864000   | 432000  | 320    |
| Utilization SLR %   | ~0         | 47       | 1        | 18      | 0      |
| Available           | 5376       | 12288    | 3456000  | 1728000 | 1280   |
| Utilization %       | ~0         | 11       | ~0       | 4       | 0      |

#### Timing estimate

+ Timing (ns): 

|  Clock | Target | Estimated | Uncertainty |
|--------|--------|-----------|-------------|
| ap_clk |  5.00  |   4.292   |     0.62    |

+ Latency (clock cycles): 

| Latency | Interval | Pipeline |
|---------|----------|----------|
|   min   |   max    |   min    | 
|    13   |    13    |    1     |


### Bitwise relu

|        Name       | BRAM_18K | DSP48E |   FF   |  LUT  | URAM |
|-------------------|----------|--------|--------|-------|------|
| DSP               |    -     |   -    |   -    |   -   |  -   |
| Expression        |    -     |   -    |   0    |   6   |  -   |
| FIFO              |    -     |   -    |   -    |   -   |  -   |
| Instance          |    4     |  1564  |  7719  | 85292 |  -   |
| Memory            |    -     |   -    |   -    |   -   |  -   |
| Multiplexer       |    -     |   -    |   -    |  36   |  -   |
| Register          |    -     |   -    |  2399  |   -   |  -   |
| Total             |    4     |  1564  | 10118  | 85334 |  0   |
| Available SLR     |   1344   |  3072  | 864000 | 432000| 320  |
| Utilization SLR % |   ~0     |   50   |   1    |  19   |  0   |
| Available         |   5376   | 12288  |3456000 |1728000| 1280 |
| Utilization %     |   ~0     |   12   |   ~0   |   4   |  0   |


+ Timing (ns): 
    * Summary: 

|  Clock | Target | Estimated | Uncertainty |
|--------|--------|-----------|-------------|
| ap_clk |  5.00  |   4.340   |     0.62    |

+ Latency (clock cycles): 
    * Summary: 

| Latency | Interval | Pipeline |
|---------|----------|----------|
|   min   |   max    |   min    | 
|    12   |    12    |    1     |
