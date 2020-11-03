from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import gzip
import numpy as np
import os
from six.moves import urllib
import struct
import tensorflow as tf

REMOTE_URL = "http://yann.lecun.com/exdb/mnist/"
LOCAL_DIR = "data/mnist/"
TRAIN_IMAGE_URL = "train-images-idx3-ubyte.gz"
TRAIN_LABEL_URL = "train-labels-idx1-ubyte.gz"
TEST_IMAGE_URL = "t10k-images-idx3-ubyte.gz"
TEST_LABEL_URL = "t10k-labels-idx1-ubyte.gz"

IMAGE_SIZE = 28
NUM_CLASSES = 10

def get_params():
    return {
        "num_classes": NUM_CLASSES,
    }

def prepare():
    if not os.path.exists(LOCAL_DIR):
        os.makedirs(LOCAL_DIR)
    for name in [
            TRAIN_IMAGE_URL,
            TRAIN_LABEL_URL,
            TEST_IMAGE_URL,
            TEST_LABEL_URL]:
        if not os.path.exists(LOCAL_DIR + name):
            urllib.request.urlretrieve(REMOTE_URL + name, LOCAL_DIR + name)

def read(split):
    image_urls = {
        tf.estimator.ModeKeys.TRAIN: TRAIN_IMAGE_URL,
        tf.estimator.ModeKeys.EVAL: TEST_IMAGE_URL
    }[split]
    label_urls = {
        tf.estimator.ModeKeys.TRAIN: TRAIN_LABEL_URL,
        tf.estimator.ModeKeys.EVAL: TEST_LABEL_URL
    }[split]

    with gzip.open(LOCAL_DIR + image_urls, "rb") as f:
        magic, num, rows, cols = struct.unpack(">IIII", f.read(16))
        images = np.frombuffer(f.read(num * rows * cols), dtype=np.uint8)
        images = np.reshape(images, [num, rows, cols, 1])
        print("Loaded %d images of size [%d, %d]." % (num, rows, cols))

    with gzip.open(LOCAL_DIR + label_urls, "rb") as f:
        magic, num = struct.unpack(">II", f.read(8))
        labels = np.frombuffer(f.read(num), dtype=np.int8)
        print("Loaded %d labels." % num)

    return tf.contrib.data.Dataset.from_tensor_slices((images, labels))

def parse(image, label):
    image = tf.to_float(image) / 255.0
    label = tf.to_int64(label)
    return {"image": image}, {"label": label}
