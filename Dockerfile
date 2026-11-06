FROM node:current@sha256:438603bbb5cda404b9416f0b5c8026f61501ab911760d861ec28c36b5d675725

RUN mkdir -p /app
WORKDIR /app

COPY package.json .
RUN npm install -g npm@latest
RUN npm install

COPY . .

EXPOSE 4200
CMD ["npx", "ng", "serve", "--host", "0.0.0.0", "--port", "4200"]
