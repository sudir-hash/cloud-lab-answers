sudo true # just to prompt password once
# install jdk
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt install openjdk-11-jdk -y

# set path and source
echo "export JAVA_HOME=\"/usr/lib/jvm/java-11-openjdk-amd64\"" >> $HOME/.profile
echo "export HADOOP_HOME=\"/opt/hadoop-3.3.1\"" >> $HOME/.profile
source $HOME/.profile

# verify installation
echo $JAVA_HOME
echo $HADOOP_HOME
echo 'java installation complete'

# download all required files
sudo wget -q -O - "https://dlcdn.apache.org/hadoop/common/hadoop-3.3.1/hadoop-3.3.1.tar.gz" --no-check-certificate | tar xvz 
wget https://raw.githubusercontent.com/ErikSchierboom/sentencegenerator/master/samples/the-king-james-bible.txt --no-check-certificate

# extract hadoop and install 
tar xvf hadoop-3.3.1.tar.gz

# update path and source
echo "export PATH=\"\$PATH:hadoop-3.3.1/bin\"" >> $HOME/.profile
source $HOME/.profile


# cleanup
# rm -rf hadoop-3.3.1 hadoop-3.3.1.tar.gz

# run hadoop
mkdir input
mv the-king-james-bible.txt input
hadoop-3.3.1/bin/hadoop jar "$HADOOP_HOME/share/hadoop/mapreduce/hadoop-mapreduce-examples-3.3.1.jar" wordcount input output
