# from - https://cloud.google.com/tpu/docs/quickstart
#---------PREREQS------------------
# IMPORTANT: Create a NEW GCP project -AND- enable TPU API for this project
# create a GCS bucket
# open cloud shell and use `ctpu` tool
ctpu print-config
#---------CREATE a GCE instance with TPU-------------
ctpu up [optional: --name --zone]
# TIPS: 
#   - use `ctpu up` to restore any lost connection
#   - default zone is `us-central1-b`
#-----------SCRIPT A TEST JOB-------------------------
# create a file named `cloud-tpu.py` - 'ctrl-X' to write & save the file
import os
import tensorflow as tf
from tensorflow.contrib import tpu
from tensorflow.contrib.cluster_resolver import TPUClusterResolver

def axy_computation(a, x, y):
  return a * x + y

inputs = [
    3.0,
    tf.ones([3, 3], tf.float32),
    tf.ones([3, 3], tf.float32),
]

tpu_computation = tpu.rewrite(axy_computation, inputs)

tpu_grpc_url = TPUClusterResolver(
    tpu=[os.environ['TPU_NAME']]).get_master()

with tf.Session(tpu_grpc_url) as sess:
  sess.run(tpu.initialize_system())
  sess.run(tf.global_variables_initializer())
  output = sess.run(tpu_computation)
  print(output)
  sess.run(tpu.shutdown_system())

print('Done!')
#-------------RUN-------------------------------
python cloud-tpu.py
[array([[4., 4., 4.],
       [4., 4., 4.],
       [4., 4., 4.]], dtype=float32)]
Done!
#-------------CLEAN UP---------------------------
# disconnect
exit
# delete
ctpu delete
# verify - should be `no instances`
ctpu status
# delete your bucket
gsutil rm -r gs://YOUR-BUCKET-NAME
