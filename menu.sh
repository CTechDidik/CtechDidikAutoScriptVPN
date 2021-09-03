#!/bin/bash
clear
echo -e ""
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipinfo.io/ip )
jam=$(date +"%T")
hari=$(date +"%A")
tnggl=$(date +"%d-%B-%Y")
echo -e "* TIME          : $jam"
echo -e "* DAY           : $hari"
echo -e "* DATE          : $tnggl"
echo -e "* SERVER        : $ISP"
echo -e "* City          : $CITY"
echo -e "* IP VPS        : $IPVPS"
echo -e "\e[1;33m=============================-Menu-=============================\e[0m'"
echo -e "\e[1;31m* menu         : Senarai Menu yang Disediakan\e[0m"
echo -e ""
echo -e "\e[1;33m=========================-SSH & OpenVPN-========================\e[0m'"
echo -e "\e[1;31m* [1]\e[0m  \e[1;32m: Create SSH & OpenVPN Account\e[0m"
echo -e "\e[1;31m* [2]\e[0m  \e[1;32m: Generate SSH & OpenVPN Trial Account\e[0m"
echo -e "\e[1;31m* [3]\e[0m  \e[1;32m: Extending SSH & OpenVPN Account Active Life\e[0m"
echo -e "\e[1;31m* [4]\e[0m  \e[1;32m: Delete SSH & OpenVPN Account\e[0m"
echo -e "\e[1;31m* [5]\e[0m  \e[1;32m: Check User Login SSH & OpenVPN\e[0m"
echo -e "\e[1;31m* [6]\e[0m  \e[1;32m: Daftar Member SSH & OpenVPN\e[0m"
echo -e "\e[1;31m* [7]\e[0m  \e[1;32m: Delete User Expired SSH & OpenVPN\e[0m"
echo -e "\e[1;31m* [8]\e[0m  \e[1;32m: Set up Autokill SSH\e[0m"
echo -e "\e[1;31m* [9]\e[0m  \e[1;32m: Displays Users Who Do Multi Login SSH\e[0m"
echo -e "\e[1;31m* [10]\e[0m \e[1;32m: Restart Service Dropbear, Squid3, OpenVPN dan SSH\e[0m"
echo -e ""
echo -e "\e[1;33m===========================-Wireguard-=========================\e[0m'"
echo -e "\e[1;31m* [11]\e[0m \e[1;32m: Create Wireguard Account\e[0m"
echo -e "\e[1;31m* [12]\e[0m \e[1;32m: Delete Wireguard Account\e[0m"
echo -e "\e[1;31m* [13]\e[0m \e[1;32m: Check User Login Wireguard\e[0m"
echo -e "\e[1;31m* [14]\e[0m \e[1;32m: Extending Wireguard Account Active Life\e[0m"
echo -e "\e[1;31m* [15]\e[0m \e[1;32m: Check Wireguard User Interface\e[0m"
echo -e ""
echo -e "\e[1;33m=============================-L2TP-============================\e[0m'"
echo -e "\e[1;31m* [16]\e[0m \e[1;32m: Creating L2TP Account\e[0m"
echo -e "\e[1;31m* [17]\e[0m \e[1;32m: Deleting L2TP Account\e[0m"
echo -e "\e[1;31m* [18]\e[0m \e[1;32m: Extending L2TP Account Active Life\e[0m"
echo -e ""
echo -e "\e[1;33m=============================-PPTP-============================\e[0m'"
echo -e "\e[1;31m* [19]\e[0m \e[1;32m: Create Account PPTP\e[0m"
echo -e "\e[1;31m* [20]\e[0m \e[1;32m: Delete PPTP Account\e[0m"
echo -e "\e[1;31m* [21]\e[0m \e[1;32m: Extending PPTP Account Active Life\e[0m"
echo -e "\e[1;31m* [22]\e[0m \e[1;32m: Check User Login PPTP\e[0m"
echo -e ""
echo -e "\e[1;33m=============================-SSTP-============================\e[0m'"
echo -e "\e[1;31m* [23]\e[0m \e[1;32m: Create Account SSTP\e[0m\e[0m"
echo -e "\e[1;31m* [24]\e[0m \e[1;32m: Delete SSTP Account\e[0m\e[0m"
echo -e "\e[1;31m* [25]\e[0m \e[1;32m: Extending SSTP Account Active Life\e[0m"
echo -e "\e[1;31m* [26]\e[0m \e[1;32m: Check User Login SSTP\e[0m"
echo -e ""
echo -e "\e[1;33m=============================-SSR-=============================\e[0m'"
echo -e "\e[1;31m* [27]\e[0m \e[1;32m: Create SSR Account\e[0m"
echo -e "\e[1;31m* [28]\e[0m \e[1;32m: Deleting SSR Account\e[0m"
echo -e "\e[1;31m* [29]\e[0m \e[1;32m: Extending SSR Account Active Life\e[0m"
echo -e "\e[1;31m* [30]\e[0m \e[1;32m: Show Other SSR Menu\e[0m"
echo -e ""
echo -e "\e[1;33m========================-Shadowsocks OBFS-=====================\e[0m'"
echo -e "\e[1;31m* [31]\e[0m \e[1;32m: Creating Shadowsocks Account\e[0m"
echo -e "\e[1;31m* [32]\e[0m \e[1;32m: Delete Shadowsocks Account\e[0m"
echo -e "\e[1;31m* [33]\e[0m \e[1;32m: Extending Shadowsocks Account Active Life\e[0m"
echo -e "\e[1;31m* [34]\e[0m \e[1;32m: Check User Login Shadowsocks\e[0m"
echo -e ""
echo -e "\e[1;33m=============================-VMESS-===========================\e[0m'"
echo -e "\e[1;31m* [35]\e[0m \e[1;32m: Create V2RAY Vmess Websocket Account\e[0m"
echo -e "\e[1;31m* [36]\e[0m \e[1;32m: Deleting V2RAY Vmess Websocket Account\e[0m"
echo -e "\e[1;31m* [37]\e[0m \e[1;32m: Extending Vmess Account Active Life\e[0m"
echo -e "\e[1;31m* [38]\e[0m \e[1;32m: Check User Login V2RAY\e[0m"
echo -e "\e[1;31m* [39]\e[0m \e[1;32m: Renew Certificate V2RAY Account\e[0m"
echo -e ""
echo -e "\e[1;33m=============================-VLESS-===========================\e[0m'"
echo -e "\e[1;31m* [40]\e[0m \e[1;32m: Create V2RAY Vless Websocket Account\e[0m"
echo -e "\e[1;31m* [41]\e[0m \e[1;32m: Deleting V2RAY Vless Websocket Account\e[0m"
echo -e "\e[1;31m* [42]\e[0m \e[1;32m: Extending Vless Account Active Life\e[0m"
echo -e "\e[1;31m* [43]\e[0m \e[1;32m: Check User Login V2RAY\e[0m"
echo -e ""
echo -e "\e[1;33m=============================-Trojan-==========================\e[0m'"
echo -e "\e[1;31m* [44]\e[0m \e[1;32m: Create Trojan Account\e[0m"
echo -e "\e[1;31m* [45]\e[0m \e[1;32m: Deleting Trojan Account\e[0m"
echo -e "\e[1;31m* [46]\e[0m \e[1;32m: Extending Trojan Account Active Life\e[0m"
echo -e "\e[1;31m* [47]\e[0m \e[1;32m: Check User Login Trojan\e[0m"
echo -e ""
echo -e "\e[1;33m=============================-SYSTEM-==========================\e[0m\e[0m'"
echo -e "\e[1;31m* [48]\e[0m \e[1;32m: Add Or Change Subdomain Host For VPS\e[0m"
echo -e "\e[1;31m* [49]\e[0m \e[1;32m: Change Port Of Some Service\e[0m"
echo -e "\e[1;31m* [50]\e[0m \e[1;32m: Autobackup Data VPS\e[0m"
echo -e "\e[1;31m* [51]\e[0m \e[1;32m: Backup Data VPS\e[0m"
echo -e "\e[1;31m* [52]\e[0m \e[1;32m: Restore Data VPS\e[0m"
echo -e "\e[1;31m* [53]\e[0m \e[1;32m: Webmin Menu\e[0m"
echo -e "\e[1;31m* [54]\e[0m \e[1;32m: Update To Latest Kernel\e[0m"
echo -e "\e[1;31m* [55]\e[0m \e[1;32m: Limit Bandwith Speed Server\e[0m"
echo -e "\e[1;31m* [56]\e[0m \e[1;32m: Check Usage of VPS Ram\e[0m"
echo -e "\e[1;31m* [57]\e[0m \e[1;32m: Reboot VPS\e[0m"
echo -e "\e[1;31m* [58]\e[0m \e[1;32m: Speedtest VPS\e[0m"
echo -e "\e[1;31m* [59]\e[0m \e[1;32m: Update To Latest Script Version\e[0m"
echo -e "\e[1;31m* [60]\e[0m \e[1;32m: Displaying System Information\e[0m"
echo -e "\e[1;31m* [61]\e[0m \e[1;32m: Info Script Auto Install\e[0m"
echo -e "\e[1;31m* [62]\e[0m \e[1;32m: Exit From VPS \e[0m"
echo -e ""
echo -e '\e[1;33m=========================-Created BY CTechDidik-========================\e[0m'
echo -e ""
read -p "        Pilih Nombor sahaja [1-62 or x]: " port
echo -e ""
case $port in
1)
usernew
;;
2)
trial
;;
3)
renew
;;
4)
deluser
;;
5)
cek
;;
6)
member
;;
7)
delete 
;;
8)
autokill
;;
9)
ceklim 
;;
10)
restart 
;;
11)
add-wg
;;
12)
del-wg
;;
13)
cek-wg
;;
14)
renew-wg
;;
15)
wg show
;;
16)
add-l2tp
;;
17)
del-l2tp
;;
18)
renew-l2tp
;;
19)
add-pptp
;;
20)
del-pptp
;;
21)
renew-pptp
;;
22)
cek-pptp
;;
23)
add-sstp
;;
24)
del-sstp
;;
25)
renew-sstp
;;
26)
cek-sstp
;;
27)
add-ssr
;;
28)
del-ssr
;;
29)
renew-ssr
;;
30)
ssr
;;
31)
add-ss
;;
32)
del-ss
;;
33)
renew-ss
;;
34)
cek-ss
;;
35)
add-ws
;;
36)
del-ws
;;
37)
renew-ws
;;
38)
cek-ws
;;
39)
certv2ray
;;
40)
add-vless
;;
41)
del-vless
;;
42)
renew-vless
;;
43)
cek-ws
;;
44)
add-tr
;;
45)
del-tr
;;
46)
renew-tr
;;
47)
cek-tr
;;
48)
add-host
;;
49)
change-port
;;
50)
autobackup
;;
51)
backup
;;
52)
restore
;;
53)
wbmn
;;
54)
kernel-updt
;;
55)
limit-speed
;;
56)
ram
;;
57)
reboot
;;
58)
speedtest
;;
59)
update
;;
60)
info
;;
61)
about
;;
62)
exit
;;
x)
exit
menu
;;
*)
echo " Sila masukkan nombor yang betul!!"
;;
esac