![[/img/russel_workflow.jpeg]]
So my understanding of how this works is as follows:

The over all goal is to convert ntuples into labeled jets. The jet's are labelled based on whether or not they are associated with an [LLP](/knowledge_base/LLPs.md). Then we train an [RNN](/knowledge_base/RNNs.md) on this data 

* We have 2 sets of ntuples from MC, one for signal, another for background
* We need to process the sets into jets
* then we need to label the data
	* 1 if the delta_R between a MC LLP and a jet is less than a certain amount
	* 0 otherwise
	* In other words, if a jet is "close" to an LLP we say it's an LLP
* Train on the resulting jets
	* we do this on [`keras`](/knowledge_base/keras.md) to make a benchmark
	* then on a quantized version of keras ([`qkeras`](/knowledge_base/qkeras.md)) to fit the model on an [FPGA](/knowledge_base/FPGAs.md)
* We run inference and compare the performance of either model to make sure that the qkeras model isn't too much worse (we expect it to be worse but train faster and take up less resources)
* The model is saved as a `.h5` file
* It is in this form that the model is converted to [HLS](/knowledge_base/HLS.md) using [`hls4ml`](/knowledge_base/hls4ml.md)