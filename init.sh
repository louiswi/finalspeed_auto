
wget --no-check-certificate https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-go.sh
chmod +x shadowsocks-go.sh
./shadowsocks-go.sh 2>&1 | tee shadowsocks-go.log

wget --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u77-b03/jdk-8u77-linux-i586.tar.gz
mkdir -p /opt/jdk/
tar xzf jdk-8u77-linux-i586.tar.gz
mv jdk1.8.0_77/* /opt/jdk/
update-alternatives --install /usr/bin/java java /opt/jdk/bin/java 100
update-alternatives --install /usr/bin/javac javac /opt/jdk/bin/javac 100

apt-get -y install wget screen
wget http://mirrors.linuxeye.com/lnmp-full.tar.gz
tar xzf lnmp-full.tar.gz
cd lnmp
screen -S lnmp 
./install.sh

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

wget -N --no-check-certificate https://raw.githubusercontent.com/91yun/serverspeeder/master/serverspeeder-all.sh && bash serverspeeder-all.sh

wget https://download.transmissionbt.com/files/transmission-2.92.tar.xz
tar xJf transmission-2.92.tar.xz
cd transmission-2.92/




wget http://www.softether-download.com/files/softether/v4.19-9605-beta-2016.03.06-tree/Linux/SoftEther_VPN_Server/32bit_-_Intel_x86/softether-vpnserver-v4.19-9605-beta-2016.03.06-linux-x86-32bit.tar.gz
tar xzvf softether-vpnserver-v4.19-9605-beta-2016.03.06-linux-x86-32bit.tar.gz
cd vpnserver
make

deb http://ftp.debian.org/debian wheezy main contrib non-free
deb-src http://ftp.debian.org/debian wheezy main contrib non-free
deb http://ftp.debian.org/debian wheezy-proposed-updates main contrib non-free
deb-src http://ftp.debian.org/debian wheezy-proposed-updates main contrib non-free
deb http://ftp.debian.org/debian wheezy-updates main contrib non-free
deb-src http://ftp.debian.org/debian wheezy-updates main contrib non-free

scatter-gather: off
	tx-scatter-gather: off
	tx-scatter-gather-fraglist: off
udp-fragmentation-offload: off [requested on]
l08.61.168.231 fs.d1sm.net
