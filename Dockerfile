FROM jenkins/jenkins:2.205
LABEL maintainer="czmoku@gmail.com"

ENV JENKINS_HOME /var/jenkins_home
ARG JAVA_OPTS
ENV JAVA_OPTS "-Djenkins.install.runSetupWizard=false ${JAVA_OPTS:-}"

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
