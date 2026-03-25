FROM node:20-alpine AS build

WORKDIR /app
COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

FROM node:20-alpine

WORKDIR /app
RUN npm install -g serve

COPY --from=build /app/dist ./dist
COPY ./scripts/start-space.sh /app/start-space.sh

RUN chmod +x /app/start-space.sh

ENV PORT=7860
EXPOSE 7860

CMD ["/app/start-space.sh"]