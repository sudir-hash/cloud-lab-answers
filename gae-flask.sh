echo "Checking for gcloud"
echo $(gcloud --version)
# clone repo
git clone -b gae-flask git@github.com:sudir-hash/cloud-lab-answers.git

# run using dev_appserver
dev_appserver.py cloud-lab-answers/app.yaml