# TensorFlow - Optimizers
Optimizers are the extended class, which include added information to train a specific model. The optimizer class is initialized with given parameters but it is important to remember that no Tensor is needed. The optimizers are used for improving speed and performance for training a specific model.

The basic optimizer of TensorFlow is −

```
tf.train.Optimizer
```
This class is defined in the specified path of tensorflow/python/training/optimizer.py.

Following are some optimizers in Tensorflow −

   * Stochastic Gradient descent
   * Stochastic Gradient descent with gradient clipping
   * Momentum
   * Nesterov momentum
   * Adagrad
   * Adadelta
   * RMSProp
   * Adam
   * Adamax
   * SMORMS3

We will focus on the Stochastic Gradient descent. The illustration for creating optimizer for the same is mentioned below −

```
def sgd(cost, params, lr = np.float32(0.01)):
   g_params = tf.gradients(cost, params)
   updates = []
   
   for param, g_param in zip(params, g_params):
      updates.append(param.assign(param - lr*g_param))
   return updates
```
The basic parameters are defined within the specific function. In our subsequent chapter, we will focus on Gradient Descent Optimization with implementation of optimizers.


[Previous Page](../tensorflow/tensorflow_hidden_layers_of_perceptron.md) [Next Page](../tensorflow/tensorflow_xor_implementation.md) 
