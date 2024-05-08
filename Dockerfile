FROM node:latest as build

WORKDIR /usr/src/app

COPY . /usr/src/app

RUN npm install 

RUN npm run build

FROM nginx:latest

COPY --from=build /usr/src/app/dist/portfolio /usr/share/nginx/html

EXPOSE 80