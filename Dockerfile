FROM sameersbn/gitlab
MAINTAINER Stefan Fritsch <fritsch@stat-up.com>

RUN apt-get update \
	&& apt-get -o Dpkg::Options::="--force-confold" install -y zip unzip\
	&& apt-get clean

RUN mkdir -p /home/git/data/tmp/downloads
RUN chown git:git /home/git/data/tmp
RUN chown git:git /home/git/data/tmp/downloads

EXPOSE 80/tcp

ENTRYPOINT ["/sbin/entrypoint.sh"]
CMD ["app:start"]
