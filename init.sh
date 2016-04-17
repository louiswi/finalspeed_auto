
wget --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u77-b03/jdk-8u77-linux-i586.tar.gz
mkdir -p /opt/jdk/
tar xzf jdk-8u77-linux-i586.tar.gz
mv jdk1.8.0_77/* /opt/jdk/
update-alternatives --install /usr/bin/java java /opt/jdk/bin/java 100
update-alternatives --install /usr/bin/javac javac /opt/jdk/bin/javac 100
wget  http://fs.d1sm.net/finalspeed/install_fs.sh
chmod +x install_fs.sh
./install_fs.sh 2>&1 | tee install.log
chmod +x -R /fs
mkdir -p /fs/cnf/
echo 15000 > /fs/cnf/listen_port
/fs/restart.sh
wget --no-check-certificate https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocksR.sh
chmod +x shadowsocksR.sh
./shadowsocksR.sh 2>&1 | tee shadowsocksR.log
echo 'deb http://ftp.debian.org/debian/ sid main
deb http://ftp.debian.org/debian/ experimental main' >> /etc/apt/sources.list
apt-get update
apt-get -t experimental install transmission-daemon -y
echo "APT::Default-Release \"stable\";" >> /etc/apt/apt.conf.d/71distro

wget http://www.softether-download.com/files/softether/v4.19-9605-beta-2016.03.06-tree/Linux/SoftEther_VPN_Server/32bit_-_Intel_x86/softether-vpnserver-v4.19-9605-beta-2016.03.06-linux-x86-32bit.tar.gz
tar xzvf softether-vpnserver-v4.19-9605-beta-2016.03.06-linux-x86-32bit.tar.gz
cd vpnserver
make
