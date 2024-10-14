We are sending logs to Graylog using rsyslog.

First, let's install rsyslog.

```
apt-get update
apt-get install rsyslog
```

Then, let's enable rsyslog.

```
systemctl enable rsyslog
systemctl start rsyslog
```

Configuration of rsyslog for Graylog

```
vi /etc/rsyslog.d/graylog.conf

# Enter the following information.

*.* @graylog.server.address:5140
```

Then, restart rsyslog.

```
systemctl restart rsyslog
```

## Graylog Settings

Create an input for the port we specified above.

The type will be Syslog UDP.

## Sending Bash Command History to Syslog

```
nano ~/.bashrc

# Add the following code.

export PROMPT_COMMAND='history -a; history -n; echo "$(whoami)@$(hostname): $(history 1)" | logger -t bash -p user.info'

# Then, to refresh
source ~/.bashrc
```