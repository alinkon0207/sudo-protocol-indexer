-- Your SQL goes here
CREATE TABLE buy_events (
    sequence_number BIGINT NOT NULL,
    creation_number BIGINT NOT NULL,
    account_address VARCHAR(66) NOT NULL,
    transaction_version BIGINT NOT NULL,
    transaction_block_height BIGINT NOT NULL,
    type TEXT NOT NULL,
    coin_type TEXT NOT NULL,
    sequence BIGINT NOT NULL,
    buyer TEXT NOT NULL,
    amount_apt BIGINT NOT NULL,
    timestamp BIGINT NOT NULL,
    -- status BOOLEAN NOT NULL,
    inserted_at TIMESTAMP NOT NULL DEFAULT NOW(),
    event_index BIGINT NOT NULL,
    indexed_type VARCHAR(300) NOT NULL,
    PRIMARY KEY (transaction_version, event_index)
);