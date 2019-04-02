# check if the gcloud sdk is initiated
if gsutil | grep -q 'Usage'; then
    echo "listing buckets for the current project"
    if gsutil | grep -q 'gs'; then
        gsutil ls
    else
        echo "No buckets created for current project"
    fi
else # else echo that the user needs to install the sdk
    echo "gcloud sdk needs to be installed"
fi

gsutil mb gs://test-bucket-$RANDOM