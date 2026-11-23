# Etapa 1: clonar y compilar la app Angular
FROM node:20 AS build

RUN apt-get update && apt-get install -y git

WORKDIR /app
RUN git clone https://github.com/24040025gr/Curso_lunes.git .

WORKDIR /app/cursoLunes
RUN npm install
RUN npm run build

# Etapa 2: servir el resultado con nginx
FROM nginx:alpine

COPY --from=build /app/cursoLunes/dist /usr/share/nginx/html/dist
RUN set -e; \
    SRC=$(find /usr/share/nginx/html/dist -name index.html -exec dirname {} \; | head -n1); \
    cp -r "$SRC"/* /usr/share/nginx/html/ ; \
    rm -rf /usr/share/nginx/html/dist

EXPOSE 80