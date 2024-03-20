FROM 978222968597.dkr.ecr.ap-southeast-1.amazonaws.com/node:18.15.0-alpine

# Install dependencies
#Requirements for bs-platform
RUN apk --update add --no-cache bash vim python3 g++ gcc musl-dev make m4 git curl \
  && test -f /usr/bin/python || ln -s /usr/bin/python3 /usr/bin/python\
	&& wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub \
	&& wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.33-r0/glibc-2.33-r0.apk \
	&& apk add --force glibc-2.33-r0.apk

# To help the ninja locate the shared libraries
ENV LD_LIBRARY_PATH=/usr/lib:/lib64:/lib

# Install lerna globally
RUN yarn global add lerna

RUN yarn build

# Set working directory to the package directory
COPY /packages/international/package.json  /packages/international/yarn.lock ./

RUN yarn install

ADD . ./

RUN yarn buildi

# Expose the app port
EXPOSE 3003

RUN mkdir -p /var/log/porter-website
VOLUME ["/var/log/porter-website"]

# Copy and run the start script
COPY deploy/server/scripts/* /usr/bin/

ENTRYPOINT ["bash", "/usr/bin/entry_point.sh"]
CMD ["/usr/bin/run.sh", "/var/log/porter-website/porter-website.pid", "/var/log/porter-website/start.log", "/var/log/porter-website/porter-website.dead"]

