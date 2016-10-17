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
    @age = 0
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


santas = []

example_genders = ["female", "male", "Prefer not to respond", "N/A", "gender fluid"]
example_ethnicities = ["Chinese", "Italian", "American", "Ethiopian", "Canadian"]

example_ethnicities.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end
