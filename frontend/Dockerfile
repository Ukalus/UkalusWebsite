FROM node:alpine AS ukalus-frontend

WORKDIR /app

COPY package.json ./
COPY package-lock.json ./

RUN npm install

COPY . ./

RUN npm run build

FROM nginx:1.19-alpine
COPY --from=ukalus-frontend /app/public /usr/share/nginx/html
