-- Создание таблицы пользователей
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    role VARCHAR(20) NOT NULL DEFAULT 'USER',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Пример: можно сразу вставить админа
INSERT INTO users (username, password, role)
VALUES ('admin', '$2a$10$examplehashedpassword', 'ADMIN')
ON CONFLICT (username) DO NOTHING;
