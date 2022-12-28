FROM postgres

LABEL Pentaho='Server 9.3 com drivers postgres e oracle'

# Init ENV
ENV PENTAHO_HOME /opt/pentaho

# Apply JAVA_HOME
ENV PENTAHO_JAVA_HOME $JAVA_HOME
ENV PENTAHO_JAVA_HOME /usr/local/openjdk-8
ENV JAVA_HOME /usr/local/openjdk-8
RUN . /etc/environment \
 export JAVA_HOME

RUN mkdir ${PENTAHO_HOME}; useradd -s /bin/bash -d ${PENTAHO_HOME} pentaho; chown -R pentaho:pentaho ${PENTAHO_HOME};

# ADD DB drivers
COPY ./lib/. $PENTAHO_HOME/pentaho-server/tomcat/lib

#Always non-root user
USER pentaho

WORKDIR /opt/pentaho

CMD ["sh", "/opt/pentaho/pentaho-server/start-pentaho.sh"]
#ENTRYPOINT ["sh", "-c", "$PENTAHO_HOME/pentaho-server/scripts/run.sh"]
