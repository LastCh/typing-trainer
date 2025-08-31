# Используем образ OpenJDK 21
FROM eclipse-temurin:21-jdk

# Рабочая директория
WORKDIR /app

# Копируем Gradle файлы
COPY build.gradle.kts settings.gradle.kts ./
COPY gradlew ./
COPY gradle ./gradle

# Делаем gradlew исполняемым
RUN chmod +x ./gradlew

# Копируем исходники
COPY src ./src

# Сборка jar
RUN ./gradlew bootJar -x test

# Порт приложения
EXPOSE 8080

# Команда запуска
ENTRYPOINT ["java","-jar","build/libs/typing-trainer-0.0.1-SNAPSHOT.jar"]
