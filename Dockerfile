FROM whyour/qinglong:2.13
RUN wget https://github.com/tsl0922/ttyd/releases/download/1.6.3/ttyd.x86_64 - O ttyd && chmod +x ttyd
COPY . .
ENTRYPOINT ["./1.sh"]
