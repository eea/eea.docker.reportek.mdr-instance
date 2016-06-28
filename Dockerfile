FROM eeacms/reportek-base-dr:latest
MAINTAINER "Olimpiu Rob" <olimpiu.rob@eaudeweb.ro>

ENV REPORTEK_DEPLOYMENT=MDR

COPY src/sources.cfg            $ZOPE_HOME/
COPY src/mdr-instance.cfg       $ZOPE_HOME/
COPY src/base.cfg               $ZOPE_HOME/

USER root
RUN ./install.sh
USER zope-www
