FROM whyour/qinglong:2.13
EXPOSE 5700
EXPOSE 22
RUN apk add --no-cache openssh-client openssh-server-pam openssh-sftp-server
RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config
ENTRYPOINT ["./docker/docker-entrypoint.sh"]
