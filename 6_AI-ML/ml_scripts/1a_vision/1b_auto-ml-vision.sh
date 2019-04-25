# notes on GCP Vision ML

# you select either A) the pre-trained API or B) the Vision AutoML

#------------------Vision API----------------------------#
# you supply images to the Vision API endpoint
# Vision API endpoint returns labels for those images

#------------------Vision AutoML-------------------------#
# you enable the Vision AutoML API (requires that billing is enabled)

# you create GCS bucket 
# you upload images to the GCS bucket

# you create labels

# you label your images - can be one label per image or multiple labels
# REQUIRED: 10 images per label
# DESIRED: 100 images per label

# you train model
# you will get an email when the model training is complete

# you review model evaluation results

# you use the model to predict labels (classify) new images
