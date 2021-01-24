CREATE TABLE role
(
    id   BIGSERIAL PRIMARY KEY,
    name VARCHAR NOT NULL UNIQUE
);

CREATE INDEX idx_role_id ON role (id);