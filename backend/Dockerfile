# Используем образ OpenJDK 21
FROM eclipse-temurin:21-jdk

# Рабочая директория
WORKDIR /app

# Копируем build.gradle.kts и все исходники
COPY build.gradle.kts settings.gradle.kts gradle.properties ./
COPY gradlew ./
COPY gradle ./gradle
COPY src ./src

# Сборка jar
RUN ./gradlew bootJar

# Порт, на котором приложение будет слушать
EXPOSE 8080

# Команда запуска
ENTRYPOINT ["java","-jar","build/libs/demo-0.0.1-SNAPSHOT.jar"]
