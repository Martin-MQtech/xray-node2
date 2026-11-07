FROM teddysun/xray:latest
COPY config.template.json /etc/xray/template.json
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]
