FROM lsiobase/alpine.nginx:3.5
MAINTAINER Stian Larsen, sparklyballs, aptalca

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"

# environment settings
ENV S6_BEHAVIOUR_IF_STAGE2_FAILS=2

# install packages
RUN \
 apk add --no-cache \
	curl \
	nginx-mod-http-echo \
	nginx-mod-http-fancyindex \
	nginx-mod-http-geoip \
	nginx-mod-http-headers-more \
	nginx-mod-http-image-filter \
	nginx-mod-http-lua \
	nginx-mod-http-nchan \
	nginx-mod-http-perl \
	nginx-mod-http-upload-progress \
	nginx-mod-http-xslt-filter \
	nginx-mod-mail \
	nginx-mod-rtmp \
	nginx-mod-stream \
	nginx-vim \
	php7-ctype \
	php7-curl \
	php7-gd \
	php7-mcrypt \
	php7-mysqli \
	php7-mysqlnd \
	php7-pdo_mysql \
	php7-xml

# add local files
COPY root/ /
