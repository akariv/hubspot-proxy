FROM nginx:alpine

COPY mysite.template /etc/nginx/conf.d/
EXPOSE 8000

CMD /bin/sh -c "cat /etc/nginx/conf.d/mysite.template | sed s/HUBSPOT_API/$HUBSPOT_API/ > /etc/nginx/conf.d/default.conf && cat /etc/nginx/conf.d/default.conf && echo yo && exec nginx -g 'daemon off;'"
