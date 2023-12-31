# GAE installation
sudo apt-get update
sudo apt install python2 -y
sudo apt install python3 -y
sudo apt install git -y
sudo apt-get install python3-venv -y
sudo wget -q -O - "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-447.0.0-linux-x86_64.tar.gz" --no-check-certificate | tar xvz 
./google-cloud-sdk/install.sh
./google-cloud-sdk/bin/gcloud init
python3 ./google-cloud-sdk/bin/dev_appserver.py

source ~/.bashrc

