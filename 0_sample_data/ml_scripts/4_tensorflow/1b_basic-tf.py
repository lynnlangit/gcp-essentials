# -*- coding: utf-8 -*-
"""
Original file at
    https://colab.research.google.com/github/tensorflow/models/blob/master/samples/core/get_started/_index.ipynb
"""
import tensorflow as tf

"""Load and prepare the [MNIST](http://yann.lecun.com/exdb/mnist/) dataset. 
Convert the samples from integers to floating-point numbers:"""

mnist = tf.keras.datasets.mnist

(x_train, y_train), (x_test, y_test) = mnist.load_data()
x_train, x_test = x_train / 255.0, x_test / 255.0

"""Build the `tf.keras` model by stacking layers. Select an optimizer and loss function used for training:"""

model = tf.keras.models.Sequential([
  tf.keras.layers.Flatten(),
  tf.keras.layers.Dense(512, activation=tf.nn.relu),
  tf.keras.layers.Dropout(0.2),
  tf.keras.layers.Dense(10, activation=tf.nn.softmax)
])

model.compile(optimizer='adam',
              loss='sparse_categorical_crossentropy',
              metrics=['accuracy'])

model.fit(x_train, y_train, epochs=5)
model.evaluate(x_test, y_test)

"""You’ve now trained an image classifier with ~98% accuracy on this dataset. 
See [Get Started with TensorFlow](https://www.tensorflow.org/get_started/) to learn more."""