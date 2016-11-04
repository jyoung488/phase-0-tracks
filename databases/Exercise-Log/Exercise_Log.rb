# BUSINESS LOGIC

require 'sqlite3'

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
  log = db.execute("SELECT workouts.id, workouts.day, workouts.exercise, gyms.name, friends.friend_name
    FROM workouts, gyms, friends 
    WHERE workouts.gym=gyms.id
    AND workouts.friend=friends.id
    ORDER BY workouts.day")
  
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

def by_date(db, date)
  log = db.execute("SELECT * FROM workouts, gyms, friends WHERE workouts.gym=gyms.id
    AND workouts.friend=friends.id
    AND workouts.day = '#{date}'")
  
  log.each do |workout|
    puts "#{workout['day']} - #{workout['exercise']} at #{workout['name']} with #{workout['friend_name']}"
  end
end

def delete_item(db, table, id_number)
  db.execute("DELETE FROM #{table} WHERE id=#{id_number}")
end

def update(db, table, id_number, column_name, new_info)
  db.execute("UPDATE #{table} SET #{column_name}=#{new_info} WHERE id=#{id_number}")
end

# USER INTERFACE

# puts "Hello! Welcome to your exercise log. Here are your past workouts:"
# past_workouts(db)
choice = ""

while choice != "exit"

  puts "Would you like to view, add, or delete info? Type 'exit' to quit program."
  choice = gets.chomp.downcase

case choice
  when /view/
    puts "View workouts, gyms, friends, or by date?"
    view = gets.chomp

    case view
    when /workout/
      past_workouts(db)
    when /gym/
      list_gyms(db)
    when /friend/
      list_friends(db)
    when /date/
      puts "Date in YYYY-MM-DD format:"
      date = gets.chomp

      puts "Your workout(s) for #{date}:"
      by_date(db, date)
    else
      puts "I didn't understand"
    end
  when /add/
    puts "Add a workout, a gym, or a friend?"
    add = gets.chomp

    case add
    when /workout/
      puts "Your gyms and friends - enter the number of the gym/friend when prompted"
      puts "Gyms-----"
      list_gyms(db)
      puts "Friends-----"
      list_friends(db)

      puts "Date of workout in YYYY-MM-DD format:"
      day = gets.chomp

      puts "Exercise:"
      exercise = gets.chomp

      puts "Gym Number:"
      gym = gets.to_i

      puts "Friend Number:"
      friend = gets.to_i

      add_workout(db, exercise, gym, friend, day)

      puts "Thank you! Here's your past workouts now:"
      past_workouts(db)
    when /gym/
      puts "Here are your current favorite gyms:"
      list_gyms(db)

      puts "New gym name:"
      new_gym = gets.chomp

      puts "City of #{new_gym}:"
      new_city = gets.chomp

      add_gym(db, new_gym, new_city)

      puts "Your saved gyms:"
      list_gyms(db)
    when /friend/
      puts "Here are your current workout buddies:"
      list_friends(db)

      puts "New workout buddy's name:"
      new_friend = gets.chomp

      add_friend(db, new_friend)

      puts "Your saved friends:"
      list_friends(db)
    end
  when /delete/
    puts "Delete from workouts, gyms, or friends?"
    delete_from = gets.chomp
      case delete_from
      when /workout/
        past_workouts(db)
      when /gym/
        list_gyms(db)
      when /friend/
        list_friends(db)
      end

    puts "Number of the item to delete:"
    delete_id = gets.to_i

    delete_item(db, delete_from, delete_id)

  when /exit/
    break    
  else
    puts "I didn't understand."
  end
end


