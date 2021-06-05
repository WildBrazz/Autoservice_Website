CREATE TABLE usr(
                    id           BIGSERIAL PRIMARY KEY,
                    login        VARCHAR(64) UNIQUE NOT NULL,
                    password     VARCHAR(64)        NOT NULL,
                    full_name    VARCHAR(100)       NOT NULL,
                    email        VARCHAR(255)       NOT NULL,
                    phone_number VARCHAR(11)        NOT NULL,
                    active       BOOLEAN
);

CREATE INDEX idx_user_id ON usr (id);