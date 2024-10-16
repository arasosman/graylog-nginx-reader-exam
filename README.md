# graylog guide

If you are only going to install Graylog, you can review this document.

[install-graylog.md](./Install-graylog.md)

We can send logs in two different ways: by using a common Docker Compose or by creating separate Docker containers.

Please refer to the following document for sending nginx logs to Graylog.

[Readme-nginx-log.md](./README-nginx-log.md)


If you want to read nginx and fail2ban logs and send them to Graylog, you can do this using Fluent Bit.

For Docker-related configurations and instructions, please refer to the following document.

[dockers.md](./dockers.md)


You can use rsyslog to send which bash commands were run on the server and other syslogs. You can find this in the following document.

[command-history-log.md](./command-history-log.md)