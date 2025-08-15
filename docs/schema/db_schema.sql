CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    email TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE transactions (
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    time_stamp TIMESTAMP NOT NULL,
    amount REAL NOT NULL,
    currency TEXT NOT NULL,
    merchant TEXT NOT NULL,
    raw_desc TEXT,
    category_pred TEXT,
    category_conf REAL,
    category_true TEXT,
    FOREIGN KEY(user_id) REFERENCES users(id)
);

CREATE TABLE anomalies (
    id INTEGER PRIMARY KEY,
    transaction_id INTEGER NOT NULL,
    score REAL NOT NULL,
    method TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(transaction_id) REFERENCES transactions(id)
);

CREATE TABLE insights (
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    period_start DATE NOT NULL,
    period_end DATE NOT NULL,
    text TEXT NOT NULL,
    json_payload TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(user_id) REFERENCES users(id)
);
