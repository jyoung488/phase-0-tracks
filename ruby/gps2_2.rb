# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # set an empty hash
  # split string into separate words
  # set default quantity as 1
  # push each item from list and default quantity into hash
  # print the list to the console [can you use one of your other methods here?]
# output: hash list

def create_list(items)
  list = {}

  separate_items = items.split

  separate_items.each do |i|
  list[i] = 1
  end
  p list
end

grocery_list = create_list("apples oranges potatoes")

# Method to add an item to a list
# input: item name and optional quantity
# steps:
  # add item and quantity into hash
# output: print hash list

def add_item(new_item, list, qty=1)
  list[new_item] = qty

  p list
end

add_item("milk", grocery_list)

# Method to remove an item from the list
# input: item name
# steps:
  # find item name in the hash
  # delete item key
# output: print hash list

def delete_item(item, list)
  list.delete(item)
  p list
end

delete_item("milk", grocery_list)

# Method to update the quantity of an item
# input: item name and new quantity
# steps:
  # set item name key to new quantity
# output: print hash list

# Method to print a list and make it look pretty
# input: hash name
# steps:
  # puts statement saying "Here's your list:"
  # iterate through each key and value in a sentence
# output: formatted hash