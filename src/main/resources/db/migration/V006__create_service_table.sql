CREATE TABLE service
(
    id                 BIGSERIAL PRIMARY KEY,
    name               VARCHAR NOT NULL,
    cost               BIGINT  NOT NULL,
    service_request_id BIGINT REFERENCES service_request (id),
    master_id          BIGINT REFERENCES usr (id)
);

CREATE INDEX idx_service_id ON service (id);