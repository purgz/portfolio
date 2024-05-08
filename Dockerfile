FROM node:latest as build

WORKDIR /usr/src/app

COPY . /usr/src/app

RUN npm i -g @angular/cli 

RUN npm install

COPY . .

RUN ng build --prod

FROM nginx:latest

COPY --from=build /usr/src/app/dist/* /usr/share/nginx/html

EXPOSE 80