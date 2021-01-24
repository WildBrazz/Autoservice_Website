CREATE TABLE service_request
(
    id        BIGSERIAL PRIMARY KEY,
    cost      BIGINT NOT NULL,
    completed boolean,
    client_id BIGINT REFERENCES usr (id),
    master_id BIGINT REFERENCES usr (id)
);

CREATE INDEX idx_service_request_id ON service_request (id);