FROM nginx:1.21.1

LABEL org.reddwarf.image.authors="jiangtingqiang@gmail.com"

ENV LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8 \
    TZ=Asia/Shanghai

ADD index.html /usr/share/nginx/html/
ADD index.css /usr/share/nginx/html/

COPY default.conf  /etc/nginx/conf.d/default.conf

EXPOSE 80
