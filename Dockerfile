FROM nginx:alpine

COPY web-content/ /usr/share/nginx/html/
COPY run-tests.sh /run-tests.sh
COPY start.sh /start.sh

RUN chmod +x /run-tests.sh /start.sh

EXPOSE 80

CMD ["/start.sh"]
