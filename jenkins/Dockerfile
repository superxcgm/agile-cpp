FROM jenkins/jenkins:2.289.2-lts
USER root
RUN apt-get update && apt-get install -y apt-transport-https \
     ca-certificates curl gnupg2 \
     software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN apt-key fingerprint 0EBFCD88
RUN add-apt-repository \ "deb [arch=amd64] https://download.docker.com/linux/debian \
    $(lsb_release -cs) stable"
RUN apt-get update && apt-get install -y docker-ce-cli
USER jenkins
RUN jenkins-plugin-cli --plugins "blueocean:1.24.7 docker-workflow:1.26 envinject:2.4.0 xunit:3.0.4"
#htmlpublisher:1.27
#gitlab:1.5.20