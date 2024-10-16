# Docker

IP addresses in the config files need to be checked.
For example, like the output URL in fluentbit.conf

```bash
# fluent bit for read nginx logs. Don't forget arrange the path veriables
docker run -d \
  --name fluent-bit-nginx \
  --restart always \
  -v $(pwd)/fluent-bit.conf:/fluent-bit/etc/fluent-bit.conf \
  -v $(pwd)/parsers.conf:/fluent-bit/etc/parsers.conf \
  -v $(pwd)/nginx/logs:/var/log/nginx \
  fluent/fluent-bit:1.9
```

```bash
# fluent bit for read fail2ban logs. Don't forget arrange the path veriables
docker run -d \
  --name fluent-bit-fail2ban2 \
  -v $(pwd)/fluent-bit/conf/fail2ban.conf:/fluent-bit/etc/fluent-bit.conf \
  -v $(pwd)/fluent-bit/parser/parsers.conf:/fluent-bit/etc/parsers.conf \
  -v /var/log/fail2ban.log:/var/log/fail2ban.log \
  -v $(pwd)/fluent-bit/scripts:/fluent-bit/etc/scripts \
  fluent/fluent-bit:1.9

```
