require_relative './lib/AsperList.rb'
require_relative './lib/List.rb'
require_relative './lib/Item.rb'

user1 = AsperList.new("Igna's List")

list1 = List.new("Tom Clancy's books")
list1.updated_content!("Lista para mostrar los libros que tiene Tom Clancy y poder hacer seguimiento de los que me he leído")

item1 = Item.new("Rainbox Six")
item2 = Item.new("Command Autority")
item3 = Item.new("Locked On")

list1.add_item(item1)
list1.add_item(item1)
list1.add_item(item1)

user1.add_list(list1)
