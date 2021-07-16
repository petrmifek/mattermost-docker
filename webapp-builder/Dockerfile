FROM node:14-alpine
  
#RUN apt-get update
#RUN apt-get install -y git libpng-dev build-essential
#RUN apt-get install -y autoconf

RUN apk --update add libtool autoconf automake curl openssl git build-base gcc abuild binutils binutils-doc gcc-doc libpng-dev nasm && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

#RUN curl -s "https://codeload.github.com/mattermost/mattermost-webapp/tar.gz/master" -o mattermost-webapp-master.tar.gz \
# && tar -xzf mattermost-webapp-master.tar.gz \
# && rm mattermost-webapp-master.tar.gz

RUN git clone https://github.com/petrmifek/mattermost-webapp.git
RUN git checkout origin/lang-cs -b lang-cs

#WORKDIR /mattermost-webapp-master
WORKDIR /mattermost-webapp
#RUN make build
#RUN npm install
#RUN npm run-script build
RUN make node_modules
RUN make package
RUN cp mattermost-webapp.tar.gz /output
#COPY data/Dockerfiles/frontendbuilder/docker-entrypoint.sh /
#ENTRYPOINT ["/docker-entrypoint.sh"]

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
