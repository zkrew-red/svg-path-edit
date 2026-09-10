FROM node:current@sha256:e961046fec20896e8904f2b4a8b4c7e5ca91826d84d8d33d83dbaa61f942069e

RUN mkdir -p /app
WORKDIR /app

COPY package.json .
RUN npm install -g npm@latest
RUN npm install

COPY . .

EXPOSE 4200
CMD ["npx", "ng", "serve", "--host", "0.0.0.0", "--port", "4200"]
