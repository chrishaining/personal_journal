DROP TABLE daily_entries;
-- DROP TABLE monthly_entries;

CREATE TABLE daily_entries(
  id SERIAL8 PRIMARY KEY,
  datetime TIMESTAMP,
  progress VARCHAR,
  meaning VARCHAR,
  reputation VARCHAR,
  feeling_supported VARCHAR,
  supporting_others VARCHAR,
  time_management VARCHAR,
  problem_solving VARCHAR,
  long_term_priorities VARCHAR,
  personal_life VARCHAR,
  happiness VARCHAR
);

CREATE TABLE monthly_entries (
id SERIAL8 PRIMARY KEY,
finances VARCHAR,
health_and_fitness VARCHAR,
family_and_friends VARCHAR,
career VARCHAR,
learning VARCHAR,
personal_development VARCHAR,
life_admin VARCHAR
);
