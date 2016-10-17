class Santa
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

end

Santa1 = Santa.new("Female", "Asian")

Santa1.speak
Santa1.eat_milk_and_cookies("gingerbread")


santas = []

example_genders = ["female", "male", "Prefer not to respond", "N/A", "gender fluid"]
example_ethnicities = ["Chinese", "Italian", "American", "Ethiopian", "Canadian"]

example_ethnicities.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

p santas