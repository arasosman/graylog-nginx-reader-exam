
## Setup

Let's create the necessary passwords first.
We will put these passwords in the docker-compose file.

```bash
# Generate a password secret
#If openssl is not present, you must install it.

GRAYLOG_PASSWORD_SECRET=  # Run the command below to
openssl rand -base64 96


# if you can't use sha you need to install coreutils
# brew install coreutils 
# Generate a hash for the admin password

GRAYLOG_ROOT_PASSWORD_SHA2= # Run the command below to
echo -n yourpassword | sha256sum
```

```bash
# we can start our services.

docker-compose up -d


http://127.0.0.1:9000/
```