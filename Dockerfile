#
# Build stage
#
FROM ttbb/compile:jdk11-git-mvn AS build
COPY . /opt/sh/compile
WORKDIR /opt/sh/compile
RUN mvn -B clean package


FROM ttbb/nifi:nake

LABEL maintainer="shoothzj@gmail.com"

COPY --from=build /opt/sh/compile/nifi-mate/target/nifi-mate-0.0.1.jar /opt/sh/nifi/mate/nifi-mate.jar

COPY docker-build /opt/sh/nifi/mate

WORKDIR /opt/sh/nifi

CMD ["/usr/bin/dumb-init", "bash", "-vx","/opt/sh/nifi/mate/scripts/start.sh"]