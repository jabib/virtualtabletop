FROM node:lts-trixie

WORKDIR /app

COPY package*.json ./

RUN npm ci --omit=dev

COPY . .

VOLUME ["/app/save"]

CMD ["node", "server.mjs"]
