=begin
PSEUDOCODE
create a new hash
define a method to make a new list
  

define a method to add an item
define a method to remove an item
define a method to update their quantities
define a method to puts a list
=end

# initial code

glist = {}

def additem(list,item,quantity)
  return if quantity == 0  
  list[item] = quantity
end  

def removeitem(list, item)
  list.delete(item)
end

def updatequantity(list, item, quantity)
  list[item] = quantity  
end

def printlist(list)
  list.each do |item,quantity|
    puts "There are #{quantity} #{item}"    
  end 
end

additem(glist, "lemonade", 2)
additem(glist, "tomatoes", 3)
additem(glist, "onions", 1)
additem(glist, "ice cream", 4)
removeitem(glist, "lemonade")
updatequantity(glist, "ice cream", 1)
printlist(glist)


# adding
# glist.[]=("key", "value")”


# array = [1, 2, 3]

# array[0] #= 1

# hash = {one: 1, two: 2, three: 3}
# hash[:four] = 4

# hash = {one: 1, two: 2, three: 3, four: 4}