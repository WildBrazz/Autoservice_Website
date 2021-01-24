CREATE TABLE car
(
    id                  BIGSERIAL PRIMARY KEY,
    vin                 VARCHAR(17) NOT NULL UNIQUE,
    registration_number VARCHAR(9)  NOT NULL UNIQUE,
    issue_year          DATE        NOT NULL,
    mileage             BIGINT,
    owner_id            BIGINT REFERENCES usr (id)
);

CREATE INDEX idx_car_id ON car (id);