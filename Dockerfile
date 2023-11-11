FROM node:18-alpine

WORKDIR /app/medusa
RUN pm2 install
RUN npm install -g @medusajs/medusa-cli cross-env
COPY package*.json ./
RUN npm install


COPY . .

CMD ["npm", "run", "start"]