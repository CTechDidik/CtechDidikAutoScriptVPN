#!/bin/bash
source /var/lib/premium-script/ipvps.conf
if [[ "$IP" = "" ]]; then
PUBLIC_IP=$(wget -qO- ipinfo.io/ip);
else
PUBLIC_IP=$IP
fi
until [[ $VPN_USER =~ ^[a-zA-Z0-9_]+$ && ${CLIENT_EXISTS} == '0' ]]; do
		read -rp "Username: " -e VPN_USER
		CLIENT_EXISTS=$(grep -w $VPN_USER /var/lib/premium-script/data-user-l2tp | wc -l)

		if [[ ${CLIENT_EXISTS} == '1' ]]; then
			echo ""
			echo "A client with the specified name was already created, please choose another name."
			exit 1
		fi
	done
read -p "Password: " VPN_PASSWORD
read -p "Expired (days): " masaaktif
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
clear

# Add or update VPN user
cat >> /etc/ppp/chap-secrets <<EOF
"$VPN_USER" l2tpd "$VPN_PASSWORD" *
EOF

VPN_PASSWORD_ENC=$(openssl passwd -1 "$VPN_PASSWORD")
cat >> /etc/ipsec.d/passwd <<EOF
$VPN_USER:$VPN_PASSWORD_ENC:xauth-psk
EOF

# Update file attributes
chmod 600 /etc/ppp/chap-secrets* /etc/ipsec.d/passwd*
echo -e "### $VPN_USER $exp">>"/var/lib/premium-script/data-user-l2tp"
cat <<EOF

================================
L2TP/IPSEC PSK VPN

Server IP    : $PUBLIC_IP
IPsec PSK    : myvpn
Username     : $VPN_USER
Password     : $VPN_PASSWORD
Expired ON   : $exp
=================================
     Mod By CTechDidik
=================================
EOF
