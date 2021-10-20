FROM  nginx:alpine 
# 安装基础 package
RUN set -x \
    && sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
    && apk update \
    # && apk add --no-cache tzdata vim openssl openssh openssl-dev bash curl \
    # # 变更时区
    # && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    # && apk del tzdata
RUN apk update \
	&& apk add --no-cache php7.3-fpm php7.3-cli php7.3-curl php7.3-gd php7.3-cgi 

COPY  src/ /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80

CMD ["nginx","-g","daemon off;"]