FROM node:18-alpine AS deps

COPY ./package*.json ./

RUN  yarn 
COPY ./turbo*.json ./
RUN yarn build
RUN yarn develop


EXPOSE 3000

ENV PORT 3000

CMD ["yarn", "start"]
