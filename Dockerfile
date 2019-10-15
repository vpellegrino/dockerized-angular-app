FROM node:12.9.0-alpine as builder
WORKDIR '/app'
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build
FROM nginx
EXPOSE 80
COPY --from=builder /app/dist/dockerized-angular-app /usr/share/nginx/html
