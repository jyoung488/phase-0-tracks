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
  log = db.execute("SELECT workouts.day, workouts.exercise, gyms.name, friends.friend_name
    FROM workouts, gyms, friends WHERE workouts.gym=gyms.id
    AND workouts.friend=friends.id;")
  
  log.each do |workout|
    puts "#{workout['day']} - #{workout['exercise']} at #{workout['name']} with #{workout['friend_name']}"
  end
end

def add_workout(db, exercise, gym, friend, day)
   db.execute("INSERT INTO workouts(exercise, gym, friend, day) VALUES (?, ?, ?, ?)", [exercise, gym, friend, day])
end

def add_gym(db, gym_name, city)
  db.execute("INSERT INTO gyms(name, city) VALUES (?, ?)", [gym_name, city])
end

def list_gyms(db)
  all_gyms = db.execute("SELECT * FROM gyms")

  all_gyms.each do |gym|
    puts "#{gym['id']} - #{gym['name']}: #{gym['city']}"
  end
end

def add_friend(db, friend_name)
  db.execute("INSERT INTO friends(friend_name) VALUES (?)", [friend_name])
end

def list_friends(db)
  all_friends = db.execute("SELECT * FROM friends")

  all_friends.each do |friend|
    puts "#{friend['id']} - #{friend['friend_name']}"
  end
end

# USER INTERFACE

# puts "Hello! Welcome to your exercise log. Here are your past workouts:"
# past_workouts(db)

puts "Would you like to view or add info?"
choice = gets.chomp

if choice.include? "view"
  puts "what would you like to view: workouts, gyms, or friends?"
  view_choice = gets.chomp

  if view_choice.include? "workouts"
    past_workouts(db)
  elsif view_choice.include? "gyms"
    list_gyms(db)
  elsif view_choice.include? "friend"
    list_friends(db)
  else
    puts "i didn't understand"
  end
elsif choice.include? "add"
  puts "would you like to add a workout, a gym, or a friend?"
  add_choice = gets.chomp

  if add_choice.include? "workout"
    puts "here are your added gyms and friends - enter the number of the gym/friend when prompted"
    puts "Gyms:"
    list_gyms(db)
    puts "Friends:"
    list_friends(db)

    puts "What's the date of your workout in YYYY-MM-DD format?"
    day = gets.chomp

    puts "What workout did you do?"
    exercise = gets.chomp

    puts "What gym number did you go to?"
    gym = gets.to_i

    puts "Who did you go with?"
    friend = gets.to_i

    add_workout(db, exercise, gym, friend, day)

    puts "Thank you! Here's your past workouts now:"
    past_workouts(db)
  elsif add_choice.include? "gym"
    puts "Here are your current favorite gyms:"
    list_gyms(db)

    puts "What's your new gym?"
    new_gym = gets.chomp

    puts "What city is #{new_gym} in?"
    new_city = gets.chomp

    add_gym(db, new_gym, new_city)

    list_gyms(db)
  elsif add_choice.include? "friend"
  end
else
  puts "I didn't understand"
end
  

# # ask user if they would like to view tables or add info
#   # if view
#     # ask if they want to view gyms, friends, or workouts
#       # if gyms - show all columns from gyms table
#       # if friends - show all columns from friends table
#       # if workouts - past_workouts(db)
#   # add info to gyms, friends, or workouts
#     # if workouts - add_workout
#     # if gyms - add_gym
#     # if friends - add_friend

#   # repeat until 'exit'



