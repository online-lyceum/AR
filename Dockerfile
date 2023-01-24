FROM ubuntu:22.04 as builder
WORKDIR /build
#RUN apt-get update && apt-get install -y npm
#RUN npm install -g @vue/cli
#COPY ./app ./ 
#RUN npm init -y
#RUN npm install 
#RUN npm run build
COPY ./ /build/dist/


FROM nginx:stable
COPY --from=builder /build/dist /usr/share/nginx/html

