require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("workouts.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS workouts(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    gym INT,
    friend INT,
    FOREIGN KEY (gym) REFERENCES gyms(name),
    FOREIGN KEY (friend) REFERENCES friends(name)
  )
SQL

db.execute(create_table_cmd)