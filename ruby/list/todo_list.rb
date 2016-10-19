class TodoList

  def initialize(items)
    @list = items
    @list
  end

  def get_items
    p @list
  end

  def add_item(new_item)
    @list << new_item
  end

  def delete_item(remove_item)
    @list.delete(remove_item)
  end

  def get_item(item_number)
    @list[item_number]
  end
end