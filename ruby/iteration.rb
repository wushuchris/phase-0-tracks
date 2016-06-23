#####Challenge 5.4 Release l

# declare an array and a hash, and populate each of them with some data.

# array
vehicle_make = [
  "toyota",
  "honda",
  "ford"
  ]

# hash
vehicle_model ={
  'toyota' => 'prius',
  'honda' => 'civic',
  'ford' => 'f150'
  }

#   Demonstrate that you can iterate through each one using .each, and then using .map!

vehicle_make.each do |make|
  puts "The vehicle make is #{make}"
end

#non-destructive solution
#new_vehicle_make = vehicle_make.map do |make|
# p make
# make = "land rover"
#end

#p vehicle_make
#p new_vehicle_make

#destructive solution

p vehicle_make

vehicle_make.map! do |make|
    make = "land rover"
end

p vehicle_make

vehicle_model.each do |make,model|
  puts "This #{make} is a #{model}"
end

#### Challenge 5.4 Release 2

# Use the documentation to find other Array and Hash methods that take blocks, and that can accomplish the tasks below, then add sample calls to phase-0-tracks/ruby/iteration.rb -- one for the array, and one for the hash.

# You can use simple (nonmeaningful) data for your example calls -- an array of integers or letters would be fine, for instance.
#new array
vehicle_make2 = [
  "toyota",
  "honda",
  "ford"
  ]
#new hash
vehicle_model2 ={
  'toyota' => 'prius',
  'honda' => 'civic',
  'ford' => 'f150'
  }

# A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).

#array
p vehicle_make2
vehicle_make2.delete_if { |make2| make2.length < 5 }
p vehicle_make2

#hash
p vehicle_model2
vehicle_model2.delete_if { |model,type| model.length < 5 }
p vehicle_model2


# A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).

#new array
vehicle_make3 = [
  "toyota",
  "honda",
  "ford"
  ]

p vehicle_make3
p vehicle_make3.select { |make| make.length < 6 }

#new hash
vehicle_model3 ={
  'toyota' => 'prius',
  'honda' => 'civic',
  'ford' => 'f150'
  }

p vehicle_model3.select { |model,type| type.length < 5 }

# A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!

# array
p vehicle_make3
p vehicle_make3.keep_if { |make| make == "ford" }

#hash
p vehicle_model3
p vehicle_model3.select { |make,model| make == "toyota" || model == "civic" }


# A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).

#new array
vehicle_make4 = [
  "toyota",
  "honda",
  "ford"
  ]

# array
p vehicle_make4
p vehicle_make4.take_while { |make| make != "ford" }
