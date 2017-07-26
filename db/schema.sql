DROP TABLE IF EXISTS pokemons;

CREATE TABLE trainers(
  id SERIAL PRIMARY KEY,
  name TEXT,
  level INTEGER,
  img_url TEXT
);

CREATE TABLE pokemons(
  id SERIAL PRIMARY KEY,
  name TEXT,
  cp INTEGER,
  poke_type TEXT,
  img_url TEXT,
  trainer_id INTEGER REFERENCES trainers(id)
);
