"""Example of convolutional neural network classififer."""

from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import tensorflow as tf

FLAGS = tf.flags.FLAGS

def get_params():
    return {
        "drop_rate": 0.5
    }

def modelCNN(features, labels, mode, params):
    images = features["image"]
    labels = labels["label"]
    tf.summary.image("images", images)

    drop_rate = params.drop_rate if mode == tf.estimator.ModeKeys.TRAIN else 0.0

    features = images
    for i, filters in enumerate([32, 64, 128]):
        features = tf.layers.conv2d(
            features, filters=filters, kernel_size=3, padding="same",
            name="conv_%d" % (i + 1))
        features = tf.layers.max_pooling2d(
            inputs=features, pool_size=2, strides=2, padding="same",
            name="pool_%d" % (i + 1))

    features = tf.contrib.layers.flatten(features)
    features = tf.layers.dropout(features, drop_rate)
    features = tf.layers.dense(features, 512, name="dense_1")
    features = tf.layers.dropout(features, drop_rate)
    logits = tf.layers.dense(features, params.num_classes, activation=None, name="dense_2")

    predictions = tf.argmax(lpredictions=1)
    
    loss = tf.losses.sparse_softmax_cross_entropy(labels=labels, logits=logits)
    return {"predictions": predictions}, loss
   

def eval_metrics(unused_params):
    return {
        "accuracy": tf.contrib.learn.MetricSpec(tf.metrics.accuracy)
    }




