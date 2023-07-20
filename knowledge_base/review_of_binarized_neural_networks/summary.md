[Referenced paper](/knowledge_base/review_of_binarized_neural_networks/paper.pdf)

### Abstract

|       Topics       |                          Details                         |
|:------------------:|:--------------------------------------------------------:|
| **Definition**     | Binarized Neural Networks (BNNs) use binary values for activations and weights instead of full precision values. |
| **Computations**   | BNNs can perform computations using bitwise operations, reducing execution time. |
| **Model Size**     | BNNs have much smaller model sizes compared to full precision models. |
| **Accuracy**       | While BNNs generally have less accuracy than full precision models, they are becoming more accurate, especially on larger datasets like ImageNet. |
| **Implementations**| BNNs are ideal for deep learning implementations on FPGAs and ASICs due to their bitwise efficiency. |
| **Objective**      | The paper reviews the BNN methodology and discusses various contributions, implementations, and applications of BNNs. |


### Intro

|       Topics       |                          Details                         |
|:------------------:|:--------------------------------------------------------:|
| **Deep Neural Networks (DNNs)** | While DNNs are becoming more powerful, their increasing size requires more storage and computational power, which is challenging for edge devices and resource-constrained platforms. |
| **Binarized Neural Networks (BNNs)** | BNNs are a solution proposed to reduce the memory and computational requirements of DNNs, offering similar capabilities as full precision DNN models. |
| **BNN Methodology** | The paper focuses on networks that use the BNN methodology proposed by Courbariaux et al., where weights and activations are binary, used in both inference and backpropagation training. |
| **BNN Improvements** | Various works have sought to improve the accuracy of BNNs and implement them on low power and resource-constrained platforms. |
| **BNN Advantages** | Most benefits of BNNs are found during inference time, but the paper will also discuss advantages during training. |
| **BNNs & Digital Design Community** | BNNs have attracted significant attention from the digital design community, with implementations on FPGAs being discussed. |
| **Structure of the Paper** | The paper reviews quantization methods, explains key terminology, outlines BNN mechanics, details major contributions, discusses techniques to improve accuracy and speed at inference, presents accuracies of different implementations on various datasets, and highlights FPGA and ASIC implementations. |

### Terminology

|       Terms        |                          Definitions                          |
|:------------------:|:-------------------------------------------------------------:|
| **Weights** | Learned values used in a dot product with activation values from previous layers. In BNNs, weights are real valued (learned) and binary (used in dot product with binary activations). |
| **Activations** | Outputs from an activation function used in a dot product with the weights from the next layer. In BNNs, these outputs are binary. |
| **Dot product** | A multiply accumulate operation that occurs in the neurons of a neural network. This term is used instead of "multiply accumulate". |
| **Parameters** | All values learned by the network through backpropagation, including weights, biases, gains, and other values. |
| **Bias** | An additive scalar value that is usually learned. Found in batch normalization layers and specific BNN techniques. |
| **Gain** | A scaling factor that is usually learned, (but sometimes extracted from statistics). Similar to bias, a gain is applied after a dot product between weights and activations. |
| **Topology** | The specific arrangement of layers in a network. The term is used instead of "architecture" to avoid confusion with the arrangement of hardware components in the digital design and FPGA community. |
| **Architecture** | The connection and layout of digital hardware. This term is specific to hardware design and does not refer to the topology of DNN models. |
| **Fully Connected Layer** | The term is used instead of "dense layer". It refers to a layer where each input neuron is connected to every output neuron. |

### Background

|           Topics            |                                   Details                                   |
|:---------------------------:|:---------------------------------------------------------------------------:|
| **Reducing DNN Size & Speed** | Different methods have been proposed to make DNNs smaller and faster without losing much accuracy, including channel-wise separable convolutions, low rank and weight sharing methods, network topologies designed to reduce parameters (e.g., SqueezeNet), and network pruning. |
| **Network Quantization Techniques** | Quantization reduces the bit width of values used in DNNs, moving from traditionally used 32-bit floating point values to smaller data types, focusing on fixed point calculations. It can reduce the total model size and potentially increase computation speed. However, real-world speedup might not match theoretical calculations due to hardware optimization for 32-bit floating point operations. |
| **Gradients Quantization** | Quantizing gradients can reduce training time. Studies found that higher precision is more beneficial in gradients than in activations, and in activations than in weights. |
| **Early Binarization** | Binarization, a 1-bit quantization, is the most extreme form of network quantization. Early works with binary values used Bayesian inference methods for training as backpropagation and SGD cannot be directly applied. Recent methods allow for training DNNs with binary weights and backpropagation (BinaryConnect method). However, BinaryConnect still requires full precision accumulations. |
| **Binarized Neural Networks (BNNs)** | BNNs are networks that use binary values for both weights and activations, allowing for bitwise operations. While the idea is not entirely new, the recent focus on training DNNs with binary weights and activations allowed BNNs to take advantage of bitwise operations, becoming the basis for most binary networks since. |

###