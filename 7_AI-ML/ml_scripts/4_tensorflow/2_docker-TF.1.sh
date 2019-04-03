# from https://www.tensorflow.org/serving/docker

# 1. get the image
docker pull tensorflow/serving

# 2. get a pre-built model
mkdir -p /tmp/tfserving
cd /tmp/tfserving
git clone --depth=1 https://github.com/tensorflow/serving

# 3. run the container, may have to run with sudo
docker run -p 8501:8501 \
--name "tensorflow" \
-v /tmp/tfserving/serving/tensorflow_serving/servables/tensorflow/testdata/saved_model_half_plus_three:/models/half_plus_three \
-e MODEL_NAME=half_plus_three -t tensorflow/serving &

# 4. query the model
curl -d '{"instances": [1.0, 2.0, 5.0]}' -X POST http://localhost:8501/v1/models/half_plus_three:predict

# 5. verify the result
{ "predictions": [3.5, 4.0, 5.5] }

# 6. tear it down
docker stop tensorflow