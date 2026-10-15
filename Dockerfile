FROM node:current@sha256:1b84b89ada025e3b14543cbb837ffaa1c1b5273b841c5b94dd1a8f9c1d8cf7fe

RUN mkdir -p /app
WORKDIR /app

COPY package.json .
RUN npm install -g npm@latest
RUN npm install

COPY . .

EXPOSE 4200
CMD ["npx", "ng", "serve", "--host", "0.0.0.0", "--port", "4200"]
