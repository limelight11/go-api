
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE TABLE users (
    id varchar(255) NOT NULL,
    name varchar(255) NOT NULL,
    email varchar(255) UNIQUE NOT NULL,
    password varchar(255) NOT NULL,
    created_at DATETIME default CURRENT_TIMESTAMP NOT NULL,
    updated_at DATETIME default CURRENT_TIMESTAMP NOT NULL,
    deleted_at DATETIME default NULL,
    PRIMARY KEY(id)
);


-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
DROP TABLE users;

