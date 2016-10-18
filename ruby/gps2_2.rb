# Method to create a list

def create_list(items)
  list = {}
  items.split.each { |item| list[item] = 1 }
  list
end

# Method to add an item to a list

def add_item(list, new_item, qty=1)
  list[new_item] = qty
end

# Method to remove an item from the list

def delete_item(list, item)
  list.delete(item)
end

# Method to update the quantity of an item

def change_quantity(list, item, new_qty)
  list[item] = new_qty
end

# Method to print a list and make it look pretty

def print_list(list)
  puts "Here's your grocery list:"
  list.each { |item, quantity| puts "#{item}: #{quantity}" }
end

todays_list = create_list("lemonade tomatoes onions ice-cream")
change_quantity(todays_list, "lemonade", 2)
change_quantity(todays_list, "tomatoes", 3)
delete_item(todays_list, "lemonade")
print_list(todays_list)

=begin
  Coming up with detailed pseudocode for the entire problem helped so much. It allowed me and my pair to
  split up the problem into smaller chunks and we could test small parts of our code and know exactly
  what the issue was. I definitely found the use of pseudocode with this assignment and will use it for
  all of it before diving straight into the code. I also now understand that pseudocode doesn't need to
  stay in the assignment as long as the code is readable.

  If we had used an array, we couldn't set the quantity amounts for each item, it would have to have been
  separate arrays for each item and quantity. Using a hash allowed us to store it all at once but we had to
  access the information inside the hash structure a different way and make sure we used the correct keys
  and values.

  A method returns the value you set to return at the end of it. For instance, we set the method to return a
  hash that we'd given a variable name of list. It can also make changes to a parameter given without
  returning a specific value.

  A method can take strings, integers, hashes, arrays as arguments.

  Information can be passed between methods using a class but in this case, setting the method to equal a
    variable that's then called in the driver code of another method.

    Going through and refactoring the code with the guide's help showed me how to examine code that SEEMS
    readable already but could still use improvement. I feel much more comfortable with defining methods
    that accept arguments and making them available to other methods. I'm still feeling a bit rusty with
    nesting methods in one another, for example if we could call print_list(create_list("apples oranges
     potatoes"))? I believe it would but I will be practicing with more complex problems!

  
=end

