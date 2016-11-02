require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("workouts.db")

create_workouts_table = <<-SQL
  CREATE TABLE IF NOT EXISTS workouts(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    gym INT,
    friend INT,
    FOREIGN KEY (gym) REFERENCES gyms(name),
    FOREIGN KEY (friend) REFERENCES friends(name)
  )
SQL

create_gyms = <<-SQL
  CREATE TABLE IF NOT EXISTS gyms(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    city VARCHAR(255)
  )
SQL

create_friends = <<-SQL
  CREATE TABLE IF NOT EXISTS friends(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
SQL

db.execute(create_workouts_table)
db.execute(create_gyms)
db.execute(create_friends)