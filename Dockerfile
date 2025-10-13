FROM node:22.20.0

ENV NUXT_HOST=0.0.0.0
ENV TINI_VERSION=v0.18.0

ADD https://github.com//krallin/tini/relases/download/${TINI_VERSION}/tini/tini /tini
RUN chmod +x/tini

WORKDIR /app
COPY ./app/nuxt-app/package.json ./app/nuxt-app/yarn.lock ./
RUN yarn install

COPY ./app/nuxt-app .

CMD ["/tini","--",yarn","run","dev"]