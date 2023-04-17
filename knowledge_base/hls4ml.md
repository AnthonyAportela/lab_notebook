![hls4ml_workflow](knowledge_base/img/hls4ml_workflow.png)

[From the docs](https://fastmachinelearning.org/hls4ml/concepts.html)
>The goal of `hls4ml` is to provide an efficient and fast translation of machine learning models from open-source packages (like [Keras](/knowledge_base/keras.md) and [PyTorch](/knowledge_base/pytorch.md)) for training machine learning algorithms to high level synthesis ([HLS](/knowledge_base/HLS.md)) code that can then be transpiled to run on an [FPGA](/knowledge_base/FPGAs.md). The resulting HLS project can be then used to produce an IP which can be plugged into more complex designs or be used to create a kernel for CPU co-processing. The user has freedom to define many of the parameters of their algorithm to best suit their needs.

# [Tutorial](https://github.com/fastmachinelearning/hls4ml-tutorial)

The following should either be done in [Scully_Mulder](/knowledge_base/Scully_Mulder.md) or on [Correlator4](/knowledge_base/Correlator4.md), since they have [FPGAs](/knowledge_base/FPGA.md) on them.
I should clone the [`hsl4ml-tutorial`](https://github.com/fastmachinelearning/hls4ml-tutorial).
```bash
git clone https://github.com/fastmachinelearning/hls4ml-tutorial
```
If I haven't already, I should follow these [instructions](/knowledge_base/mamba.md) to get mamba installed in correlator4. If you don't know what that is, it's just like `conda` but better.

Then I need do cd into the directory, create, then activate the provided environment.
```bash
cd hls4ml-tutorial
mamba env create -f environment.yml
mamba activate hls4ml-tutorial
```

Now running through the notebooks:
## Part 1: Getting Started
The gist of this notebook is 
* make a keras NN which is able to tag particles based on jet information
* convert that keras model into an hls4ml network which we call FPGA firmware
* And then synthesize the model, ie, simulate the gates and resources that the model would take up on an FPGA

These are the results of the synthesis:

```
Found 1 solution(s) in model_1/hls4ml_prj//myproject_prj.
Reports for solution "solution1":

C simulation report not found.
SYNTHESIS REPORT:
================================================================
== Vivado HLS Report for 'myproject'
================================================================
* Date:           Mon Apr 10 18:11:14 2023

* Version:        2019.1 (Build 2552052 on Fri May 24 15:28:33 MDT 2019)
* Project:        myproject_prj
* Solution:       solution1
* Product family: virtexuplus
* Target device:  xcu250-figd2104-2L-e


================================================================
== Performance Estimates
================================================================
+ Timing (ns): 
    * Summary: 
    +--------+-------+----------+------------+
    |  Clock | Target| Estimated| Uncertainty|
    +--------+-------+----------+------------+
    |ap_clk  |   5.00|     4.371|        0.62|
    +--------+-------+----------+------------+

+ Latency (clock cycles): 
    * Summary: 
    +-----+-----+-----+-----+----------+
    |  Latency  |  Interval | Pipeline |
    | min | max | min | max |   Type   |
    +-----+-----+-----+-----+----------+
    |   10|   10|    1|    1| function |
    +-----+-----+-----+-----+----------+

    + Detail: 
        * Instance: 
        +--------------------------------------------------------------------------+---------------------------------------------------------------+-----+-----+-----+-----+----------+
        |                                                                          |                                                               |  Latency  |  Interval | Pipeline |
        |                                 Instance                                 |                             Module                            | min | max | min | max |   Type   |
        +--------------------------------------------------------------------------+---------------------------------------------------------------+-----+-----+-----+-----+----------+
        |grp_dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_123  |dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1  |    1|    1|    1|    1| function |
        |grp_dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_2_fu_191  |dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_2  |    1|    1|    1|    1| function |
        |grp_dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_s_fu_197  |dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_s  |    1|    1|    1|    1| function |
        |grp_dense_latency_ap_fixed_ap_fixed_config11_0_0_0_0_0_0_fu_233           |dense_latency_ap_fixed_ap_fixed_config11_0_0_0_0_0_0           |    1|    1|    1|    1| function |
        |call_ret1_relu_ap_fixed_ap_fixed_16_6_5_3_0_relu_config4_s_fu_269         |relu_ap_fixed_ap_fixed_16_6_5_3_0_relu_config4_s               |    0|    0|    1|    1| function |
        |call_ret3_relu_ap_fixed_ap_fixed_16_6_5_3_0_relu_config7_s_fu_337         |relu_ap_fixed_ap_fixed_16_6_5_3_0_relu_config7_s               |    0|    0|    1|    1| function |
        |call_ret5_relu_ap_fixed_ap_fixed_16_6_5_3_0_relu_config10_s_fu_373        |relu_ap_fixed_ap_fixed_16_6_5_3_0_relu_config10_s              |    0|    0|    1|    1| function |
        |grp_softmax_latency_ap_fixed_ap_fixed_softmax_config13_s_fu_409           |softmax_latency_ap_fixed_ap_fixed_softmax_config13_s           |    2|    2|    1|    1| function |
        +--------------------------------------------------------------------------+---------------------------------------------------------------+-----+-----+-----+-----+----------+

        * Loop: 
        N/A



================================================================
== Utilization Estimates
================================================================
* Summary: 
+---------------------+---------+-------+---------+---------+------+
|         Name        | BRAM_18K| DSP48E|    FF   |   LUT   | URAM |
+---------------------+---------+-------+---------+---------+------+
|DSP                  |        -|      -|        -|        -|     -|
|Expression           |        -|      -|        0|        6|     -|
|FIFO                 |        -|      -|        -|        -|     -|
|Instance             |        4|   2774|     9998|   109115|     -|
|Memory               |        -|      -|        -|        -|     -|
|Multiplexer          |        -|      -|        -|       36|     -|
|Register             |        -|      -|     3341|        -|     -|
+---------------------+---------+-------+---------+---------+------+
|Total                |        4|   2774|    13339|   109157|     0|
+---------------------+---------+-------+---------+---------+------+
|Available SLR        |     1344|   3072|   864000|   432000|   320|
+---------------------+---------+-------+---------+---------+------+
|Utilization SLR (%)  |    ~0   |     90|        1|       25|     0|
+---------------------+---------+-------+---------+---------+------+
|Available            |     5376|  12288|  3456000|  1728000|  1280|
+---------------------+---------+-------+---------+---------+------+
|Utilization (%)      |    ~0   |     22|    ~0   |        6|     0|
+---------------------+---------+-------+---------+---------+------+

+ Detail: 
    * Instance: 
    +--------------------------------------------------------------------------+---------------------------------------------------------------+---------+-------+------+-------+-----+
    |                                 Instance                                 |                             Module                            | BRAM_18K| DSP48E|  FF  |  LUT  | URAM|
    +--------------------------------------------------------------------------+---------------------------------------------------------------+---------+-------+------+-------+-----+
    |grp_dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_123  |dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1  |        0|   1234|  4602|  50962|    0|
    |grp_dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_2_fu_191  |dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_2  |        0|    751|  2453|  26112|    0|
    |grp_dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_s_fu_197  |dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_s  |        0|    651|  2369|  24411|    0|
    |grp_dense_latency_ap_fixed_ap_fixed_config11_0_0_0_0_0_0_fu_233           |dense_latency_ap_fixed_ap_fixed_config11_0_0_0_0_0_0           |        0|    133|   481|   3968|    0|
    |call_ret5_relu_ap_fixed_ap_fixed_16_6_5_3_0_relu_config10_s_fu_373        |relu_ap_fixed_ap_fixed_16_6_5_3_0_relu_config10_s              |        0|      0|     0|    896|    0|
    |call_ret1_relu_ap_fixed_ap_fixed_16_6_5_3_0_relu_config4_s_fu_269         |relu_ap_fixed_ap_fixed_16_6_5_3_0_relu_config4_s               |        0|      0|     0|   1792|    0|
    |call_ret3_relu_ap_fixed_ap_fixed_16_6_5_3_0_relu_config7_s_fu_337         |relu_ap_fixed_ap_fixed_16_6_5_3_0_relu_config7_s               |        0|      0|     0|    896|    0|
    |grp_softmax_latency_ap_fixed_ap_fixed_softmax_config13_s_fu_409           |softmax_latency_ap_fixed_ap_fixed_softmax_config13_s           |        4|      5|    93|     78|    0|
    +--------------------------------------------------------------------------+---------------------------------------------------------------+---------+-------+------+-------+-----+
    |Total                                                                     |                                                               |        4|   2774|  9998| 109115|    0|
    +--------------------------------------------------------------------------+---------------------------------------------------------------+---------+-------+------+-------+-----+

Co-simulation report not found.
```

## Part 2: Advanced Config



## Part 3: Compression

## Part 4: Quantization

## Part 5: BDTs

## Part 6: CNNs

## Part 7: Deployment

