#!bin/sh

echo "Installing Apache2"
sudo apt-get install apache2
sudo apt-get install libxml2 libxml2-dev libxslt1-dev 
sudo apt-get install libmysqlclient15-dev mysql-server-5.6

echo "Installing rvm and ruby 2.1.2"
​gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
sudo apt-get install curl
curl -sSL https://get.rvm.io | bash -s stable --ruby
curl -sSL https://get.rvm.io | bash
source ~/.profile
rvm list known
rvm install 2.1.2
rvm use 2.1.2
rvm --default use 2.1.1
ruby -v

echo "Installing Java 8.0"
wget --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u65-b17/jdk-8u65-linux-x64.tar.gz && \
sudo mkdir -p /opt/jdk && \
tar -zxf jdk-8u65-linux-x64.tar.gz -C /opt/jdk && \
rm -fr jdk-8u65-linux-x64.tar.gz && \
sudo update-alternatives --install /usr/bin/java java /opt/jdk/jdk1.8.0_65/bin/java 1086 && \
sudo update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk1.8.0_65/bin/javac 1086 && \
sudo apt-get purge openjdk-7-jre openjdk-6-jre openjdk-6-jre-headless && \
sudo apt-get autoremove 


echo "Installing Sublime text3"
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install -y sublime-text-installer
