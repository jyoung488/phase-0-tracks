# BUSINESS LOGIC

require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("workouts.db")
db.results_as_hash = true

create_workouts = <<-SQL
  CREATE TABLE IF NOT EXISTS workouts(
    id INTEGER PRIMARY KEY,
    exercise VARCHAR(255),
    gym VARCHAR(255),
    friend VARCHAR(255),
    day REAL
  )
SQL

db.execute(create_workouts)

def add_workout(db, exercise, gym, friend, day)
   db.execute("INSERT INTO workouts(exercise, gym, friend, day) VALUES (?, ?, ?, ?)", [exercise, gym, friend, day])
end

# USER INTERFACE

# puts "Hello! Welcome to your exercise log. Here are your past workouts:"
# past_workouts(db)

puts "What's the date in YYYY-MM-DD format?"
day = gets.chomp

puts "What workout did you do?"
exercise = gets.chomp

puts "What gym did you go to?"
gym = gets.chomp

puts "Who did you go with?"
friend = gets.chomp

add_workout(db, exercise, gym, friend, day)
