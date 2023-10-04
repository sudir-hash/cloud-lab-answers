# Sample flask app with app.yaml for GAE deployment
## app.yaml
```
runtime: python27
api_version: 1
threadsafe: false

handlers:
- url : /.*
  script: main.py
```

## main.py
```
 print('hello world')
```
# GAE web app
gdrive for GAE web app [https://drive.google.com/file/d/18gHSvne6r11yT70X6x7HtmJlpLTBieYq/view]

# Scheduling 
```
git clone https://github.com/michaelfahmy/cloudsim-task-scheduling
```
# Hadoop
```
sudo apt update
sudo apt install default-jdk
sudo apt install openjdk-11-jdk
```
```
echo "export JAVA_HOME=\"/usr/lib/jvm/java-11-openjdk-amd64\"" >> $HOME/.profile
echo "export HADOOP_HOME=\"/opt/hadoop-3.3.1\"" >> $HOME/.profile
source $HOME/.profile
```
```
wget https://dlcdn.apache.org/hadoop/common/hadoop-3.3.1/hadoop-3.3.1.tar.gz
tar xvf hadoop-3.3.1.tar.gz
sudo cp -r hadoop-3.3.1 "$HADOOP_HOME"
rm -rf hadoop-3.3.1 hadoop-3.3.1.tar.gz
echo "export PATH=\"\$PATH:\$HADOOP_HOME/bin\"" >> $HOME/.profile
source $HOME/.profile
```

```
wget https://raw.githubusercontent.com/ErikSchierboom/sentencegenerator/master/samples/the-king-james-bible.txt
mkdir input
mv the-king-james-bible.txt input
hadoop jar "$HADOOP_HOME/share/hadoop/mapreduce/hadoop-mapreduce-examples-3.3.1.jar" wordcount input output
```
