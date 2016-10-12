def block_example 
    puts"Hi!"
    yield ("Bob")
end

block_example{ |name| puts "Hello there #{name}" }

cookies = ["chocolate chip", "oatmeal raisin", "sugar"]

cookies.each {|cookie| puts "I like #{cookie} !" }

cookies.map! do |cookie| 
    puts cookie
    cookie.upcase! 
end

p cookies

bakery_items = { 
    pastries: "croissant",
    breads: "bagels",
    desserts: "cupcake"
}

bakery_items.each {|type, item| puts "I like #{type} and more specifically #{item}!"}

numbers = [1, 2, 4, 5, 6]
numbers.delete_if {|number| number < 4 }

numbers.keep_if {|number| number < 4}

numbers.reject! { |number| number < 4 }

numbers.select! { |number| number.odd? }

state_capitols = { 
    California: "Sacramento",
    New_York: "Albany",
    Texas: "Austin",
    Arizona: "Phoenix"
}

state_capitols.delete_if { |state, city| state.length < 6}

state_capitols.keep_if { |state, city| state.length < 6}

state_capitols.reject! { |state, city| city.length == 6}

state_capitols.select! { |state, city| city.include? "A" }
