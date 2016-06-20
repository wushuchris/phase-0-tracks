#Arrays Challenge 5-2

#1 initialize an empty array and store it in a variable (you can choose the name).

p invfactors = []

#2 Add five items to your array.

p invfactors = ["mkt-rf", "low vol", "mom", "qlty", "val"]

#3 Delete the item at index 2.

p invfactors.delete_at(2)

#4 Insert a new item at index 2.

p invfactors.insert(2,"new factor")

#5 Remove the first item of the array without having to refer to its index.

p invfactors.delete("mkt-rf")

#6 Ask the array whether it includes a certain item. Print the result of this method call (labeled so it prints as more than just an isolated boolean value without any context.)

p invfactors.select { |f| f == "qlty" }

#7 Initialize another array that already has a few items in it.

p invfactors2 = ["acc","beta"]

#8 Add the two arrays together and store them in a new variable. Print the new array.
p all_factors = [invfactors, invfactors2]
p all_factors.flatten