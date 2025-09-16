FROM node:20.12.2
WORKDIR /app
RUN apt-get update && apt-get install -y bash make
ENV NODE_ENV=development
COPY ./app/package*.json ./
RUN npm install  # ← Устанавливает только production зависимости!
COPY ./app/ .
EXPOSE 8080
CMD ["npx", "concurrently", "npm run start-frontend", "npm run start-backend"]