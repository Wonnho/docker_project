FROM node:22.20.0

ENV NUXT_HOST=0.0.0.0
WORKDIR /app
COPY ./app/nuxt-app .
RUN yarn install

CMD ["yarn","run","dev"]