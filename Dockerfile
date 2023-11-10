FROM node:18-alpine AS deps
RUN apk add --no-cache libc6-compat
WORKDIR /app

COPY package.json ./
RUN  npm install 




RUN npm run build




EXPOSE 3000

ENV PORT 3000

CMD ["npm", "start"]
