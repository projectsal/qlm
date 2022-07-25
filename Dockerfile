FROM whyour/qinglong:2.13
RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config
ENTRYPOINT ["./docker/docker-entrypoint.sh"]
