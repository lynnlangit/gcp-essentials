# -*- coding: utf-8 -*-

"""TensorFlow with GPU - src at - https://colab.research.google.com/notebooks/gpu.ipynb
# Confirm TensorFlow can see the GPU
Select "GPU" in the Accelerator drop-down in Notebook Settings (Edit menu)
"""

import tensorflow as tf
device_name = tf.test.gpu_device_name()
if device_name != '/device:GPU:0':
  raise SystemError('GPU device not found')
print('Found GPU at: {}'.format(device_name))

"""# Observe TensorFlow speedup on GPU relative to CPU
This example constructs a typical convolutional neural network layer over a
random image and manually places the resulting ops on either the CPU or the GPU
to compare execution speed.
"""

import tensorflow as tf
import timeit

config = tf.ConfigProto()
config.gpu_options.allow_growth = True

with tf.device('/cpu:0'):
  random_image_cpu = tf.random_normal((100, 100, 100, 3))
  net_cpu = tf.layers.conv2d(random_image_cpu, 32, 7)
  net_cpu = tf.reduce_sum(net_cpu)

with tf.device('/gpu:0'):
  random_image_gpu = tf.random_normal((100, 100, 100, 3))
  net_gpu = tf.layers.conv2d(random_image_gpu, 32, 7)
  net_gpu = tf.reduce_sum(net_gpu)

sess = tf.Session(config=config)
sess.run(tf.global_variables_initializer())

def cpu():sess.run(net_cpu)
def gpu():sess.run(net_gpu)
  
print('Time (s) to convolve 32x7x7x3 filter over random 100x100x100x3 images '
      '(batch x height x width x channel). Sum of ten runs.')
cpu_time = timeit.timeit('cpu()', number=10, setup="from __main__ import cpu")
print('CPU (s):' + str(cpu_time))
gpu_time = timeit.timeit('gpu()', number=10, setup="from __main__ import gpu")
print('GPU (s):' + str(gpu_time))
print('GPU speedup over CPU: {}x'.format(int(cpu_time/gpu_time)))

sess.close()