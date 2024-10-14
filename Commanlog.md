# Ubuntu server command logs to graylog

logları graylog'a rsyslog ile yapıyoruz.

öncelikle rsyslog kurulumu yapalım.

```

apt-get update
apt-get install rsyslog

```

daha sonra rsyslog aktifleştirelim

```
systemctl enable rsyslog
systemctl start rsyslog

```

Graylog İçin rsyslog Yapılandırması

```
vi /etc/rsyslog.d/graylog.conf

#alttaki bilgileri girelim.

*.* @graylog.sunucu.adresi:5140

```

daha sonra rsyslog restart ediyoruz

```

systemctl restart rsyslog

```


## graylog ayarları

yukarda belirttiğimiz port için bir input oluşturuyoruz

tip olarak Syslog UDP olacak

## Bash Komut Geçmişini Syslog'a Gönderme

```
nano ~/.bashrc

# aşağıdaki kodu ekleyelim.

export PROMPT_COMMAND='history -a; history -n; echo "$(whoami)@$(hostname): $(history 1)" | logger -t bash -p user.info'


# daha sonra yenilemek için
source ~/.bashrc

```