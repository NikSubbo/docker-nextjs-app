FROM node:alpine AS builder

WORKDIR /app

COPY package*.json .

RUN npm i

COPY . .

RUN npm run build

FROM node:alpine

WORKDIR /app

COPY package*.json ./
RUN adduser -D appuser && npm install --production

COPY --from=builder /app/.next ./.next
COPY --from=builder /app/public ./public

USER appuser

CMD ["npm", "run", "start"]