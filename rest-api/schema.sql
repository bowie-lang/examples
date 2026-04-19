-- Apply once:  psql "$DATABASE_URL" -f schema.sql

CREATE TABLE IF NOT EXISTS users (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  surname TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS items (
  id SERIAL PRIMARY KEY,
  label TEXT NOT NULL
);

INSERT INTO users (name, surname)
SELECT 'Onur', 'Ravli'
WHERE NOT EXISTS (SELECT 1 FROM users WHERE name = 'Onur' AND surname = 'Ravli');

INSERT INTO users (name, surname)
SELECT 'David', 'Bowie'
WHERE NOT EXISTS (SELECT 1 FROM users WHERE name = 'David' AND surname = 'Bowie');

INSERT INTO items (label)
SELECT 'demo item'
WHERE NOT EXISTS (SELECT 1 FROM items WHERE label = 'demo item');

INSERT INTO items (label)
SELECT 'another row'
WHERE NOT EXISTS (SELECT 1 FROM items WHERE label = 'another row');
