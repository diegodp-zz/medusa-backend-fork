FROM node:18-alpine AS deps
RUN apk add --no-cache libc6-compat

RUN  yarn install 




RUN yarn develop




EXPOSE 3000

ENV PORT 3000

CMD ["yarn", "start"]
