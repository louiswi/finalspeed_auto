yum -y install glibc.i686
wget -qO- bench.sh | bash


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

apt-get -y install screen
screen -S lnmpp
wget http://lnmpp.net/lnmpp_x86 -O lnmpp && chmod +x lnmpp && ./lnmpp --disablepostgresql

wget -N --no-check-certificate https://raw.githubusercontent.com/91yun/serverspeeder/master/serverspeeder-all.sh && bash serverspeeder-all.sh

wget https://download.transmissionbt.com/files/transmission-2.92.tar.xz
tar xJf transmission-2.92.tar.xz
cd transmission-2.92/
apt-get -y install libevent-dev
apt-get -y install intltool
./configure --prefix=/opt/transmission
wget -O /usr/bin/transmission-start https://raw.githubusercontent.com/louiswi/shadowsocks_auto/master/transmission-start.sh
chmod +x /usr/bin/transmission-start


wget http://www.softether-download.com/files/softether/v4.21-9613-beta-2016.04.24-tree/Linux/SoftEther_VPN_Server/32bit_-_Intel_x86/softether-vpnserver-v4.21-9613-beta-2016.04.24-linux-x86-32bit.tar.gz
tar xzvf softether-vpnserver-v4.21-9613-beta-2016.04.24-linux-x86-32bit.tar.gz
cd vpnserver
make
mv vpnserver/ /opt
wget -O /usr/bin/vpnserver-start https://raw.githubusercontent.com/louiswi/finalspeed_auto/master/vpnserver-start
chmod +x /usr/bin/vpnserver-start
vpnserver-start


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

https://www.verify.microsoft.com/api/v1/emailvalidation/activate/4d366b1e-ca14-4f69-9be5-b1082b10b416
mysqld:
mysqld --initialize-insecure --user=mysql
