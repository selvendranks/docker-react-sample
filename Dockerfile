FROM node:16-alpine as builder

WORKDIR /app

COPY package.json .

run npm install

copy . .

run npm run build


from nginx
COPY --from=builder /app/build /usr/share/nginx/html


