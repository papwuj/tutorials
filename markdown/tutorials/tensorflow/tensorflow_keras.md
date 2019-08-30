# TensorFlow - Keras
Keras is compact, easy to learn, high-level Python library run on top of TensorFlow framework. It is made with focus of understanding deep learning techniques, such as creating layers for neural networks maintaining the concepts of shapes and mathematical details. The creation of freamework can be of the following two types −

   * Sequential API
   * Functional API

Consider the following eight steps to create deep learning model in Keras −

   * Loading the data
   * Preprocess the loaded data
   * Definition of model
   * Compiling the model
   * Fit the specified model
   * Evaluate it
   * Make the required predictions
   * Save the model

We will use the Jupyter Notebook for execution and display of output as shown below −

**Step 1** − Loading the data and preprocessing the loaded data is implemented first to execute the deep learning model.

```
import warnings
warnings.filterwarnings('ignore')

import numpy as np
np.random.seed(123) # for reproducibility

from keras.models import Sequential
from keras.layers import Flatten, MaxPool2D, Conv2D, Dense, Reshape, Dropout
from keras.utils import np_utils
Using TensorFlow backend.
from keras.datasets import mnist

# Load pre-shuffled MNIST data into train and test sets
(X_train, y_train), (X_test, y_test) = mnist.load_data()
X_train = X_train.reshape(X_train.shape[0], 28, 28, 1)
X_test = X_test.reshape(X_test.shape[0], 28, 28, 1)
X_train = X_train.astype('float32')
X_test = X_test.astype('float32')
X_train /= 255
X_test /= 255
Y_train = np_utils.to_categorical(y_train, 10)
Y_test = np_utils.to_categorical(y_test, 10)
```
This step can be defined as “Import libraries and Modules” which means all the libraries and modules are imported as an initial step.

**Step 2** − In this step, we will define the model architecture −

```
model = Sequential()
model.add(Conv2D(32, 3, 3, activation = 'relu', input_shape = (28,28,1)))
model.add(Conv2D(32, 3, 3, activation = 'relu'))
model.add(MaxPool2D(pool_size = (2,2)))
model.add(Dropout(0.25))
model.add(Flatten())
model.add(Dense(128, activation = 'relu'))
model.add(Dropout(0.5))
model.add(Dense(10, activation = 'softmax'))
```
**Step 3** − Let us now compile the specified model −

```
model.compile(loss = 'categorical_crossentropy', optimizer = 'adam', metrics = ['accuracy'])
```
**Step 4** − We will now fit the model using training data −

```
model.fit(X_train, Y_train, batch_size = 32, epochs = 10, verbose = 1)
```
The output of iterations created is as follows −

```
Epoch 1/10 60000/60000 [==============================] - 65s - 
loss: 0.2124 - 
acc: 0.9345 
Epoch 2/10 60000/60000 [==============================] - 62s - 
loss: 0.0893 - 
acc: 0.9740 
Epoch 3/10 60000/60000 [==============================] - 58s - 
loss: 0.0665 - 
acc: 0.9802 
Epoch 4/10 60000/60000 [==============================] - 62s - 
loss: 0.0571 - 
acc: 0.9830 
Epoch 5/10 60000/60000 [==============================] - 62s - 
loss: 0.0474 - 
acc: 0.9855 
Epoch 6/10 60000/60000 [==============================] - 59s -
loss: 0.0416 - 
acc: 0.9871 
Epoch 7/10 60000/60000 [==============================] - 61s - 
loss: 0.0380 - 
acc: 0.9877 
Epoch 8/10 60000/60000 [==============================] - 63s - 
loss: 0.0333 - 
acc: 0.9895 
Epoch 9/10 60000/60000 [==============================] - 64s - 
loss: 0.0325 - 
acc: 0.9898 
Epoch 10/10 60000/60000 [==============================] - 60s - 
loss: 0.0284 - 
acc: 0.9910
```

[Previous Page](../tensorflow/tensorflow_cnn_and_rnn_difference.md) [Next Page](../tensorflow/tensorflow_distributed_computing.md) 
