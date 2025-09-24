# Usa una imagen base de Java 11 (compatible con tu proyecto)
FROM eclipse-temurin:11-jre

# Crea un directorio para la app
WORKDIR /app

# Copia el jar compilado al contenedor (ajusta si tu jar tiene otro nombre)
COPY target/infra-eureka-server-0.0.1-SNAPSHOT.jar app.jar

# Expone el puerto donde corre Eureka (8761 por defecto)
EXPOSE 8761

# Comando para arrancar el servidor
ENTRYPOINT ["java", "-jar", "app.jar"]