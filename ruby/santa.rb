class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(type)
    puts "That was a good #{type}!"
  end

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."

    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(0..140)
  end

  def celebrate_birthday
    @age = @age + 1
    puts @age
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer_name))
    @reindeer_ranking << reindeer_name
    @reindeer_ranking
    puts "The new ranking is #{@reindeer_ranking}"
  end

end

Santa1 = Santa.new("Female", "Asian")

Santa1.speak
Santa1.eat_milk_and_cookies("gingerbread")
Santa1.celebrate_birthday
Santa1.get_mad_at("Vixen")
Santa1.gender = "female"
puts "This is a #{Santa1.gender} Santa."
puts "Santa is #{Santa1.age} and #{Santa1.ethnicity}."


example_genders = ["female", "male", "Prefer not to respond", "N/A", "gender fluid"]
example_ethnicities = ["Chinese", "Italian", "American", "Ethiopian", "Canadian"]

Lots_of_Santas = []
5.times do
  Lots_of_Santas << Santa.new(example_genders.sample, example_ethnicities.sample)
end

Lots_of_Santas.each do |new_santa|
  puts "This Santa is #{new_santa.age}, #{new_santa.gender}, #{new_santa.ethnicity}!"
end
