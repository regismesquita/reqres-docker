FROM node:8.16.0-alpine

RUN apk add git
RUN mkdir - /app
WORKDIR /app
RUN git clone https://github.com/benhowdle89/reqres.git
WORKDIR /app/reqres
RUN npm install
EXPOSE 5000
CMD ["node","app.js"]
