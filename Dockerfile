FROM node:22.20.0

ENV NUXT_HOST=0.0.0.0
WORKDIR /app
COPY ./app/nuxt-app/package.json ./app/nuxt-app/yarn.lock ./
RUN yarn install

COPY ./app/nuxt-app .

CMD ["yarn","run","dev"]