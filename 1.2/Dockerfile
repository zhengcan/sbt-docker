# Dockerfile Template #

FROM openjdk:11

ARG SBT_VERSION=1.2.8
ARG SBT_FILE=sbt-${SBT_VERSION}.tgz
ENV SBT_VERSION ${SBT_VERSION}
ENV SBT_COURSIER_VERSION 1.1.0-M14-4

ADD ./assets/${SBT_FILE} /opt
COPY ./assets/repositories /root/.sbt/repositories
COPY ./assets/sbt.sh /usr/local/bin/sbt

RUN \
  if [ ! -f /opt/sbt/bin/sbt ]; then \
    wget https://github.com/sbt/sbt/releases/download/v$SBT_VERSION/sbt-$SBT_VERSION.tgz && \
    tar xfz sbt-$SBT_VERSION.tgz -C /opt/ && \
    rm sbt-$SBT_VERSION.tgz; \
  fi && \
# Coursier
  if [ "$SBT_COURSIER_VERSION" != "" ]; then \
  	mkdir -p ~/.sbt/1.0/plugins && \
  	echo "addSbtPlugin(\"io.get-coursier\" % \"sbt-coursier\" % \"$SBT_COURSIER_VERSION\")" >> ~/.sbt/1.0/plugins/plugins.sbt && \
  	echo 'classpathTypes += "maven-plugin"' >> ~/.sbt/1.0/sbt-coursier.sbt; \
  fi && \
# Warm Up
  mkdir -p ./app/project ./app/src/main/scala && cd ./app && \
  echo "sbt.version=$SBT_VERSION" >> project/build.properties && \
  echo 'lazy val root = (project in file("."))' >> build.sbt && \
  echo 'case object Temp;' >> src/main/scala/Temp.scala && \
  (sbt compile || true) && (sbt compile || true) && sbt compile && \
  cd .. && rm -rf ./app

CMD ["sbt"]

