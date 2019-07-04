FROM sameersbn/gitlab:11.11.3
LABEL maintainer="Stefan Fritsch <fritsch@stat-up.com>"

RUN apt-get update \
	&& apt-get -o Dpkg::Options::="--force-confold" install -y zip unzip\
	&& apt-get clean

RUN mkdir -p /home/git/data/tmp

EXPOSE 22/tcp 80/tcp 443/tcp

ENTRYPOINT ["/sbin/entrypoint.sh"]
CMD ["app:start"]
