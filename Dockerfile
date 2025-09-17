FROM node:20.12.2

WORKDIR /app
COPY app/ .

RUN npm install

CMD ["make", "test"]