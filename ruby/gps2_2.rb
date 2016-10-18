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