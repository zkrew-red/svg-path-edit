FROM node:current@sha256:f5d1cc40abc10c2843339a2134d07817cf33c405cb16bfd052b0ed790254c3a3

RUN mkdir -p /app
WORKDIR /app

COPY package.json .
RUN npm install -g npm@latest
RUN npm install

COPY . .

EXPOSE 4200
CMD ["npx", "ng", "serve", "--host", "0.0.0.0", "--port", "4200"]
