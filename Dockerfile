FROM teddysun/xray:latestCOPY config.template.json /etc/xray/template.json
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
FROM teddysun/xray:latest
COPY config.template.json /etc/xray/template.json
