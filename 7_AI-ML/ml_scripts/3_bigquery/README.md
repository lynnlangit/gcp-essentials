# BigQuery Machine Learning

Code samples BigQuery Machine Learning.  BQ ML currently supports the following types of models:  

 - **Linear regression** — use to predict a numerical value  

 - **Binary logistic regression** — use to predict whether an input is a member of a class or not  

 - **Multiclass logistic regression for classification** — use to predict whether an input is a member of 2+ classes 
        such as whether an input is "low-value", "medium-value", or "high-value"

 ## Samples

  - [BQ ML for Analysts](FROM 'https://cloud.google.com/bigquery/docs/bigqueryml-analyst-start') code walkthrough
  - [CREATE MODEL](https://cloud.google.com/bigquery/docs/reference/standard-sql/bigqueryml-syntax-create#models_in_bqml_name') syntax

  ## About EVALUATE

- ML.EVALUATE() - Use to evaluate model metrics. The ML.EVALUATE function can be used with both linear regression and logistic regression models. You can also use the ML.ROC_CURVE function to evaluate logistic regression models, but ML.ROC_CURVE is not supported for multiclass models.  

- ML.ROC_CURVE() -  Use to evaluate logistic regression-specific metrics. ML.ROC_CURVE only evaluates logistic regression models.

- ML.CONFUSION_MATRIX() - Use to return a confusion matrix for the given logistic regression model & input data. This function can be used with all types of logistic regression models.  The output columns of the ML.CONFUSION_MATRIX function depend on the model. The first output column is always expected_label. There are N additional columns, one for each class in the trained model. The names of the additional columns depend on the class labels used to train the model.  

- NOTES:
    - The threshold option cannot be used with multiclass logistic regression models 
    -  ML.CONFUSION_MATRIX does not support linear regression models.
- [More info](https://cloud.google.com/bigquery/docs/reference/standard-sql/bigqueryml-syntax-evaluate) about EVALUATE

  ## About PREDICT

   - For logistic regression models: 
        - The predicted_<label_column_name>_probs output column is an array of STRUCTs of type [<label, prob>] that contains the predicted probability of each label.  

        - The predicted_<label_column_name> output column is one of the two input labels, depending on which label has the higher predicted probability.  

    - For multiclass logistic regression models:
        - The predicted_<label_column_name>_probs output column is the probability for each class label calculated using a softmax function.  
        
        - The predicted_<label_column_name> output column is the label with the highest predicted probability score.  

    - For linear regression models:
        - The predicted_<label_column_name> output column is the predicted value of the label.

    - [More info](https://cloud.google.com/bigquery/docs/reference/standard-sql/bigqueryml-syntax-predict) about PREDICT

