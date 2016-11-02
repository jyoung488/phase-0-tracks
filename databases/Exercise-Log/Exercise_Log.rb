# BUSINESS LOGIC

require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("workouts.db")
db.execute("PRAGMA foreign_keys = ON")

create_workouts_table = <<-SQL
  CREATE TABLE IF NOT EXISTS workouts(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    gym_id INT,
    friend_id INT,
    day REAL,
    FOREIGN KEY(gym_id) REFERENCES gyms(id),
    FOREIGN KEY(friend_id) REFERENCES friends(id)
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

def add_workout(db, workout, gym, friend)
  db.execute("INSERT INTO workouts (name) VALUES (?)", [workout])
end

def add_gym(db, gym)
  db.execute("INSERT INTO gyms (name) VALUES (?)", [gym])
end

def add_friend(db, friend)
  db.execute("INSERT INTO friends (name) VALUES (?)", [friend])
end

def past_workouts(db)
   workouts = db.execute("SELECT workouts.day, gyms.name, workouts.name, friends.name
    FROM workouts, gyms, friends
    WHERE workouts.gym_id=gyms.id
    AND workouts.friend_id=friends.id")
   workouts
end

def view_friends(db)
  friends = db.execute ("SELECT * FROM friends")
  friends
end

def view_gyms(db)
  gyms = db.execute("SELECT * FROM gyms")
  gyms
end

# add_workout(db, 'yoga', 1, 1)
past_workouts(db)

# USER INTERFACE




