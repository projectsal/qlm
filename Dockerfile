FROM whyour/qinglong:2.13
EXPOSE 5700
EXPOSE 22
RUN apk update && apk add --no-cache openssh-client openssh-server-pam openssh-sftp-server
RUN mkdir -p /root/.ssh \
    # only this user should be able to read this folder (it may contain private keys)
    && chmod 0700 /root/.ssh \
    # unlock the user
    && passwd -u root
RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config
ENTRYPOINT ["./docker/docker-entrypoint.sh"]
