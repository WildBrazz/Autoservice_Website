CREATE TABLE car
(
    id                  BIGSERIAL PRIMARY KEY,
    name                VARCHAR(100)  NOT NULL,
    vin                 VARCHAR(17)   NOT NULL UNIQUE,
    registration_number VARCHAR(9)    NOT NULL UNIQUE,
    issue_year          DECIMAL(4, 0) NOT NULL,
    mileage             BIGINT,
    owner_id            BIGINT REFERENCES usr (id)
);

CREATE INDEX idx_car_id ON car (id);