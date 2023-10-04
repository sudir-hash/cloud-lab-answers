echo "Checking for gcloud"
echo $(gcloud --version)
# clone repo
git clone -b gae-web https://github.com/sudir-hash/cloud-lab-answers

# run using dev_appserver
python3 ./google-cloud-sdk/bin/dev_appserver.py ./cloud-lab-answers/app.yaml
