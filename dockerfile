FROM node:13.10.1-alpine3.11


RUN npm install gitbook-cli@2.3.2 -g

ARG GITBOOK_VERSION=3.2.2
RUN gitbook fetch $GITBOOK_VERSION 


ENV BOOKDIR /gitbook
VOLUME $BOOKDIR

EXPOSE 4000

WORKDIR $BOOKDIR
RUN sed -i '/confirm: true/d' /root/.gitbook/versions/3.2.2/lib/output/website/copyPluginAssets.js



CMD ["gitbook", "--help"]