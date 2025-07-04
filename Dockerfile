FROM eeacms/reportek-base-dr:2.47-112
MAINTAINER "EEA: IDM2 C-TEAM" <eea-edw-c-team-alerts@googlegroups.com>

ENV REPORTEK_DEPLOYMENT=MDR

COPY src/sources.cfg            \
     src/mdr-instance.cfg       \
     src/base.cfg               $ZOPE_HOME/
COPY src/docker-initialize.py   /

USER root
RUN ./install.sh
USER zope-www
