FROM sameersbn/gitlab
MAINTAINER Stefan Fritsch <fritsch@stat-up.com>

RUN apt-get update \
	&& apt-get -o Dpkg::Options::="--force-confold" install -y zip unzip\
	&& apt-get clean


RUN mkdir /home/git
RUN chown git:git /home/git

RUN mkdir /home/git/data
RUN chown git:git /home/git/data

RUN mkdir /home/git/data/tmp
RUN chown git:git /home/git/data/tmp

EXPOSE 80/tcp

ENTRYPOINT ["/sbin/entrypoint.sh"]
CMD ["app:start"]
