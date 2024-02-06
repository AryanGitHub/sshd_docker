FROM ubuntu:latest
RUN apt upgrade -y && apt update -y
RUN apt install -y neovim ssh sudo curl whois
COPY . /enable_ssh_init
WORKDIR /enable_ssh_init
RUN chmod 777 ./initScript.sh && ./initScript.sh

# Setup default command and/or parameters.
EXPOSE 22
CMD ["/usr/bin/sudo", "/usr/sbin/sshd", "-D", "-o", "ListenAddress=0.0.0.0"]
