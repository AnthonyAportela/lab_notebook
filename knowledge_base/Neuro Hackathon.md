Classification task that takes in what the brain looks like and predicts where the rat is being touched.

# Input/output

Input: Graph of rat neurons
Output: which limb is being touched

## Input definition

* Point cloud of rat neurons is already defined in `idx_coord_neural.npy`
* Fixed graph structure per animal
* Each. frame could be a "point" in the dataset
* graph feature
	* frame number
* node feature
	* absolute coordinates
	* absolute time series amplitude 
* edge features
	* distance between nodes
	* "activation" between nodes
		* if nodes are activated at similar times we assume association

## Output definition

* 4 output nodes corresponding to values between 0 and 1
	* 0 means: sure it's not being touched
	* 1 means : sure it is being touched

## Network architecture

Because each graph would have the same structure, we can afford to use simple graph convolution

