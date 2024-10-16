# Docker

```bash
# 
docker run -d \
  --name fluent-bit-nginx \
  --restart always \
  -v $(pwd)/fluent-bit.conf:/fluent-bit/etc/fluent-bit.conf \
  -v $(pwd)/parsers.conf:/fluent-bit/etc/parsers.conf \
  -v $(pwd)/nginx/logs:/var/log/nginx \
  fluent/fluent-bit:1.9
```
