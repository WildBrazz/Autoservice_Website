CREATE TABLE user_role
(
    user_id BIGINT REFERENCES usr (id) ON DELETE CASCADE,
    role_id BIGINT REFERENCES role (id)
);