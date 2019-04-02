# notes on GCP Natural Language ML

# you select either A) the pre-trained API or B) the Natural Language AutoML

#------------------Natural Language API----------------------------#
# you supply test to the Natural Language API endpoint
# Language API endpoint returns labels for that text
#       grouped into Entities, Sentiment, Syntax or Catagories

#------------------Natural Language AutoML-------------------------#
# you enable the Language AutoML API (requires that billing is enabled)

# you create GCS bucket 
# you upload text to the GCS bucket (currently English only)
# file types are .csv, .txt or .zip (max 500 files/upload)

# you create labels

# you label your images - can be one label per image or multiple labels
# REQUIRED: 10 images per label
# DESIRED: 100 images per label ((better still is 1000))

# you train model
# you will get an email when the model training is complete

# you review model evaluation results

# you use the model to predict labels (classify) new images

#----------------More Info------------------------------------

# https://cloud.google.com/natural-language/automl/docs/beginners-guide#importing
