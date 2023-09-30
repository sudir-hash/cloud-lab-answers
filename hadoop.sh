sudo true # just to prompt password once
sudo apt update -y 

#install jdk
sudo apt install default-jdk -y 
sudo apt install openjdk-11-jdk -y 
#set path and source
echo "export JAVA_HOME=\"/usr/lib/jvm/java-11-openjdk-amd64\"" >> $HOME/.profile
echo "export HADOOP_HOME=\"/opt/hadoop-3.3.1\"" >> $HOME/.profile
source $HOME/.profile

#download all required files
wget https://dlcdn.apache.org/hadoop/common/hadoop-3.3.1/hadoop-3.3.1.tar.gz
wget https://raw.githubusercontent.com/ErikSchierboom/sentencegenerator/master/samples/the-king-james-bible.txt

#extract hadoop and install 
tar xvf hadoop-3.3.1.tar.gz
sudo cp -r hadoop-3.3.1 "$HADOOP_HOME"
#update path and source
echo "export PATH=\"\$PATH:\$HADOOP_HOME/bin\"" >> $HOME/.profile
source $HOME/.profile
#cleanup
rm -rf hadoop-3.3.1 hadoop-3.3.1.tar.gz

#run hadoop
mkdir input
mv the-king-james-bible.txt input
hadoop jar "$HADOOP_HOME/share/hadoop/mapreduce/hadoop-mapreduce-examples-3.3.1.jar" wordcount input output
