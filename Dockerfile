FROM node:18-alpine AS deps
RUN apk add --no-cache libc6-compat
WORKDIR /app

COPY package.json ./
COPY turbo.json ./
RUN  yarn install 




RUN yarn build




EXPOSE 3000

ENV PORT 3000

CMD ["yarn", "start"]
