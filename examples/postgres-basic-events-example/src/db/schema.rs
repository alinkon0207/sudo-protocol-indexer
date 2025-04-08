// @generated automatically by Diesel CLI.

diesel::table! {
    raffle_events (transaction_version, event_index) {
        sequence_number -> Int8,
        creation_number -> Int8,
        #[max_length = 66]
        account_address -> Varchar,
        transaction_version -> Int8,
        transaction_block_height -> Int8,
        #[sql_name = "type"]
        type_ -> Text,
        // data -> Jsonb,
        winner -> Text,
        coin_type -> Text,
        #[sql_name = "timestamp"]
        timestamp_ -> Text,
        inserted_at -> Timestamp,
        event_index -> Int8,
        #[max_length = 300]
        indexed_type -> Varchar,
    }
}

diesel::allow_tables_to_appear_in_same_query!(raffle_events,);
