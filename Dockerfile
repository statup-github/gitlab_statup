FROM sameersbn/gitlab
MAINTAINER Stefan Fritsch <fritsch@stat-up.com>

RUN apt-get update \
	&& apt-get -o Dpkg::Options::="--force-confold" install -y zip unzip\
	&& apt-get clean


EXPOSE 22/tcp 80/tcp

ENTRYPOINT ["/sbin/entrypoint.sh"]
CMD ["app:start"]
