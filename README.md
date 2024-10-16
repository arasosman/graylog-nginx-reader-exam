# graylog guide

## Install graylog
If you are only going to install Graylog, you can review this document.

[install-graylog.md](./Install-graylog.md)

We can send logs in two different ways: by using a common Docker Compose or by creating separate Docker containers.


### Install graylog with fluent bit. 

Please refer to the following document for sending nginx logs to Graylog.
this compose for test env

[Readme-nginx-log.md](./README-nginx-log.md)


If you want to read nginx and fail2ban logs and send them to Graylog, you can do this using Fluent Bit.

## What is fluent bit
We use Fluent Bit to send nginx logs. Fluent Bit follows a log file and when there is a change (using the tail command), it takes this value, parses it, passes it through the specified filters, and sends it to the output we specify. To perform this operation, we set it up as a sidecar.

### Sidecar,  What is a sidecar?
 How is it created according to environments?

K8s sidecar for fluent bit

https://chatgpt.com/share/670e2fa3-637c-800c-870c-832db11701ab

Docker sidecar for fluent bit
https://chatgpt.com/share/670e3153-5ac8-800c-a776-e414549c02b2

What is sidecar pattern?
https://chatgpt.com/share/670e3406-432c-800c-9a42-b007f1e20960


## create docker container 

If you don't prefer docker compose for fluent bit

For Docker-related configurations and instructions, please refer to the following document.

[dockers.md](./dockers.md)

## Send Bash History To Graylog

You can use rsyslog to send which bash commands were run on the server and other syslogs. You can find this in the following document.

[command-history-log.md](./command-history-log.md)