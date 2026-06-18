# Etapa 1: Compilación
FROM maven:3.8-eclipse-temurin-17 AS builder
WORKDIR /app
COPY pom.xml .
COPY src ./src
# Generamos los archivos estáticos en la carpeta output
RUN mvn clean compile exec:java

# Etapa 2: Servidor Web Minimalista
FROM nginx:alpine
# Copiamos solo lo generado a la carpeta que lee Nginx
COPY --from=builder /app/output /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]