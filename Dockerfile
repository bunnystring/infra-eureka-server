# Usa una imagen base de Java 11
FROM eclipse-temurin:11-jre

# Crea un directorio para la app
WORKDIR /app

# Copia el jar compilado al contenedor
COPY target/*.jar app.jar

# Expone el puerto donde corre Eureka (8761 por defecto)
EXPOSE 8761

# Comando para arrancar el servidor
ENTRYPOINT ["java", "-jar", "app.jar"]