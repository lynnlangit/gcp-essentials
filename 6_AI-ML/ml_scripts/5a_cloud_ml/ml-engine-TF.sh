# from - https://cloud.google.com/ml-engine/docs/tensorflow/getting-started-training-prediction

# Builds a wide & deep model for predicting income category based on US Census Income Dataset
# The two income categories (or labels) are:
    # >50K  —Greater than 50K USD -- or --  <=50K —Less than or equal to 50K USD

# Wide & deep models use DNNs to learn high level abstractions about complex features or their interactions 
# DNNs then combine their outputs with a linear regression performed on simpler features
# This provides a balance between power and speed that is effective on many structured data problems

# NOTE: can use gcloud shell or local (Mac) w/gcloud sdk
# -----------------------set up-------------------------
# enable Cloud ML and GCE APIs
# create service account (key) for Project Owner
#        -> download the .JSON file
# setup python in a virtualenv
`gcloud components update`
# install TF and verify 

# download sample data
wget https://github.com/GoogleCloudPlatform/cloudml-samples/archive/master.zip
# upzip and put data into directories for use by TF
# install requirements.txt

#---------------------run local--------------------------
# training job single mode
gcloud ml-engine local train \
    --module-name trainer.task \
    --package-path trainer/ \
    --job-dir $MODEL_DIR \
    -- \
    --train-files $TRAIN_DATA \
    --eval-files $EVAL_DATA \
    --train-steps 1000 \
    --eval-steps 100

# inspect via TensorBoard
tensorboard --logdir=$MODEL_DIR --port=8080

# training job distributed mode
gcloud ml-engine local train \
    --module-name trainer.task \
    --package-path trainer/ \
    --job-dir $MODEL_DIR \
    --distributed \
    -- \
    --train-files $TRAIN_DATA \
    --eval-files $EVAL_DATA \
    --train-steps 1000 \
    --eval-steps 100

#-------------------run GCP--------------------------------
# setup GCS bucket

# train model in single, then distributed mode
# perform hyperparameter tuning
# deploy model
# predict with model

#-------------------clean up--------------------------------
# remove GCP resources, including GCS bucket