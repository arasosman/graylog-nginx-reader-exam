# Send server log to graylog

We are sending logs to Graylog using rsyslog.

First, let's install rsyslog.

```bash
apt-get update
apt-get install rsyslog
```

Then, let's enable rsyslog.

```bash
systemctl enable rsyslog
systemctl start rsyslog
```

Configuration of rsyslog for Graylog

```bash
vi /etc/rsyslog.d/graylog.conf

# Enter the following information.

*.* @graylog.server.address:5140
```

Then, restart rsyslog.

```bash
systemctl restart rsyslog
```

## Graylog Settings

Create an input for the port we specified above.

The type will be Syslog UDP.

## Sending Bash Command History to Syslog

```bash
nano ~/.bashrc

# Add the following code.

export PROMPT_COMMAND='history -a; history -n; echo "$(whoami)@$(hostname): $(history 1)" | logger -t bash -p user.info'

# Then, to refresh
source ~/.bashrc
```
