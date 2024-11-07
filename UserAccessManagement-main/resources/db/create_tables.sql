-- Create Users Table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(50) NOT NULL,
    role VARCHAR(10) NOT NULL
);

-- Create Software Table
CREATE TABLE software (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description TEXT,
    access_levels VARCHAR(50) NOT NULL
);

-- Create Requests Table
CREATE TABLE requests (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id),
    software_id INTEGER REFERENCES software(id),
    access_type VARCHAR(10) NOT NULL,
    reason TEXT,
    status VARCHAR(10) NOT NULL DEFAULT 'Pending'
);
