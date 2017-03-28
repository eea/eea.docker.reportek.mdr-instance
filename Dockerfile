FROM eeacms/reportek-base-dr:1.8.0
MAINTAINER "Olimpiu Rob" <olimpiu.rob@eaudeweb.ro>

ENV REPORTEK_DEPLOYMENT=MDR

COPY src/sources.cfg            \
     src/mdr-instance.cfg       \
     src/base.cfg               $ZOPE_HOME/

USER root
RUN ./install.sh
USER zope-www
