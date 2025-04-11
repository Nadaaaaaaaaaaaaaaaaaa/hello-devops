FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html
COPY run-tests.sh /run-tests.sh
COPY start.sh /start.sh

RUN chmod +x /run-tests.sh /start.sh

EXPOSE 80

CMD ["/start.sh"]
