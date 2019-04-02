# from -- https://cloud.google.com/ml-engine/docs/scikit/getting-started-training

import datetime
import os
import subprocess
import sys
import pandas as pd

from sklearn import svm
from sklearn.externals import joblib

# Fill in your Cloud Storage bucket name
BUCKET_ID = <YOUR_BUCKET_NAME>

iris_data_filename = 'iris_data.csv'
iris_target_filename = 'iris_target.csv'
data_dir = 'gs://cloud-samples-data/ml-engine/iris'

subprocess.check_call(['gsutil', 'cp', os.path.join(data_dir,
                                                    iris_data_filename),
                       iris_data_filename], stderr=sys.stdout)
subprocess.check_call(['gsutil', 'cp', os.path.join(data_dir,
                                                    iris_target_filename),
                       iris_target_filename], stderr=sys.stdout)

iris_data = pd.read_csv(iris_data_filename).values
iris_target = pd.read_csv(iris_target_filename).values
iris_target = iris_target.reshape((iris_target.size,))

classifier = svm.SVC(verbose=True)
classifier.fit(iris_data, iris_target)

model = 'model.joblib'
joblib.dump(classifier, model)

model_path = os.path.join('gs://', bucket, datetime.datetime.now().strftime(
    'iris_%Y%m%d_%H%M%S'), model)
subprocess.check_call(['gsutil', 'cp', model, model_path], stderr=sys.stdout)
