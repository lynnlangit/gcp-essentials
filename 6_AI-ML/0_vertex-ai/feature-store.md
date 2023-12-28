# Vertex AI Feature Store

## What is it?
Vertex AI Feature Store provides a managed solution for online feature serving (low-latency serving), which is critical for making timely online predictions. You do not need to build and operate low-latency data serving infrastructure; Vertex AI Feature Store does this for you and scales as needed. You can also use Vertex AI Feature Store to build batch pipelines for training models.
- More info / docs - [link](https://cloud.google.com/vertex-ai/docs/featurestore)
- Best Practices - [link](https://cloud.google.com/vertex-ai/docs/featurestore/best-practices)

---

## gcloud commands and process

Shown below are example gcloud commands for creating a feature store, creating a feature, and creating a feature set. The process is as follows:

### Create a Feature Store
```
gcloud beta ai featurestores create $FEATURESTORE_ID \
    --location=$REGION \
    --project=$PROJECT_ID \
    --featurestore-location=$REGION \
    --description="Feature Store for demo"
```

### Create a Feature Store entity type
```
gcloud beta ai featurestores entity-types create $ENTITY_TYPE_ID \
    --featurestore=$FEATURESTORE_ID \
    --location=$REGION \
    --project=$PROJECT_ID \
    --description="Entity type for demo"
```

### Create a Feature Store feature
```
gcloud beta ai featurestores features create $FEATURE_ID \
    --featurestore=$FEATURESTORE_ID \
    --entity-type=$ENTITY_TYPE_ID \
    --location=$REGION \
    --project=$PROJECT_ID \
    --description="Feature for demo" \
    --value-type=DOUBLE \
    --labels=feature_group=customer
```

### Create a Ingest job
```
gcloud beta ai featurestores ingest \
    --featurestore=$FEATURESTORE_ID \
    --entity-type=$ENTITY_TYPE_ID \
    --location=$REGION \
    --project=$PROJECT_ID \
    --feature-ids=$FEATURE_ID \
    --entity-id-file=$ENTITY_ID_FILE \
    --feature-value-file=$FEATURE_VALUE_FILE \
    --ingest-time-file=$INGEST_TIME_FILE
```

### Use Feature Store in a training job
```
gcloud beta ai model training-jobs submit training \
    --region=$REGION \
    --master-image-uri=$IMAGE_URI \
    --scale-tier=BASIC \
    --project=$PROJECT_ID \
    -- \
    --featurestore=$FEATURESTORE_ID \
    --entity-type=$ENTITY_TYPE_ID \
    --feature-ids=$FEATURE_ID \
    --entity-id-file=$ENTITY_ID_FILE \
    --feature-value-file=$FEATURE_VALUE_FILE \
    --ingest-time-file=$INGEST_TIME_FILE
```