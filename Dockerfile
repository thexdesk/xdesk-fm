FROM node:14-alpine

USER root

COPY ./packages/app /app
WORKDIR /app
RUN yarn install \
    && yarn build

EXPOSE 3000


 
CMD ["yarn", "start"]