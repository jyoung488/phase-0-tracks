# BUSINESS LOGIC

require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("workouts.db")
db.results_as_hash = true

create_workouts = <<-SQL
  CREATE TABLE IF NOT EXISTS workouts(
    id INTEGER PRIMARY KEY,
    exercise VARCHAR(255),
    gym INT,
    friend INT,
    day REAL,
    FOREIGN KEY (gym) REFERENCES gyms(id),
    FOREIGN KEY (friend) REFERENCES friends(id)
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
    friend_name VARCHAR(255)
  )
SQL

db.execute(create_workouts)
db.execute(create_gyms)
db.execute(create_friends)

def past_workouts(db)
  log = db.execute("SELECT * FROM workouts")
  
  log.each do |workout|
    puts "#{workout['day']} - #{workout['exercise']} at #{workout['gym']} with #{workout['friend']}"
  end
end

def add_workout(db, exercise, gym, friend, day)
   db.execute("INSERT INTO workouts(exercise, gym, friend, day) VALUES (?, ?, ?, ?)", [exercise, gym, friend, day])
end

# USER INTERFACE

puts "Hello! Welcome to your exercise log. Here are your past workouts:"
past_workouts(db)

puts "What's the date in YYYY-MM-DD format?"
day = gets.chomp

puts "What workout did you do?"
exercise = gets.chomp

puts "What gym did you go to?"
gym = gets.chomp

puts "Who did you go with?"
friend = gets.chomp

add_workout(db, exercise, gym, friend, day)

puts "Thank you! Here's your past workouts now:"
past_workouts(db)
