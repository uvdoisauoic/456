bash <(curl -L -s https://raw.githubusercontent.com/wulabing/V2Ray_ws-tls_bash_onekey/master/install.sh) | tee v2ray_ins.log
yum groupinstall "MATE Desktop" -y
rpm -Uvh --force http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm --quiet
yum install remmina remmina-plugins-* -y
yum install tigervnc-server tigervnc -y
yum install xrdp -y
touch ~/.Xclients
echo "mate-session" > ~/.Xclients
chmod a+x ~/.Xclients
systemctl enable xrdp
systemctl start xrdp
systemctl start firewalld
wget https://github.com/helloxz/ccaa/archive/master.zip
unzip master.zip && cd ccaa-master && sh ccaa.sh
cd ~
chmod +x /etc/rc.d/rc.local
echo "/usr/sbin/ccaa start" >> /etc/rc.d/rc.local
curl https://rclone.org/install.sh | sudo bash
wget https://www.moerats.com/usr/shell/rclone_debian.sh && bash rclone_debian.sh
rclone config
mkdir /data/GoogleDrive
wget -O qBittorrentCentOS7install.sh https://zhujiwiki.com/wp-content/uploads/2018/12/qBittorrentCentOS7install.sh && bash qBittorrentCentOS7install.sh
iptables -t nat -A PREROUTING -p udp -d 141.98.218.3 -j REDIRECT
iptables -t nat -A PREROUTING -p tcp -d 141.98.218.3 -j REDIRECT


iptables -t nat -A PREROUTING -p udp -d 23.160.193.152 -j REDIRECT
iptables -t nat -A PREROUTING -p tcp -d 23.160.193.152 -j REDIRECT
iptables -t nat -A PREROUTING -p udp -d 23.160.193.153 -j REDIRECT
iptables -t nat -A PREROUTING -p tcp -d 23.160.193.153 -j REDIRECT
iptables -t nat -A PREROUTING -p udp -d 23.160.193.154 -j REDIRECT
iptables -t nat -A PREROUTING -p tcp -d 23.160.193.154 -j REDIRECT
iptables -t nat -A PREROUTING -p udp -d 23.160.193.155 -j REDIRECT
iptables -t nat -A PREROUTING -p tcp -d 23.160.193.155 -j REDIRECT
