FROM node:current@sha256:a723b54c35a76e947095a20a67d39585bb09c862e6b1adeb8a9f518f95e34fb0

RUN mkdir -p /app
WORKDIR /app

COPY package.json .
RUN npm install -g npm@latest
RUN npm install

COPY . .

EXPOSE 4200
CMD ["npx", "ng", "serve", "--host", "0.0.0.0", "--port", "4200"]
