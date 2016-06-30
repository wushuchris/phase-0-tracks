class TodoList

  attr_reader
  attr_accessor :list

  def initialize(list)
    #puts "initialize todo list instance"
    @list = list
  end

  def get_items
    @list
  end

  def get_item(index_number) #retrieve item by index
    @list[index_number]
  end

  def add_item(new_item)
    @list << new_item
  end

  def delete_item(delete_item)
    @list.delete(delete_item)
  end

end

