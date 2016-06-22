#####Challenge 5.4 Release l

# declare an array and a hash, and populate each of them with some data.

# array
vehicle_make = ["toyota", "honda", "ford"]

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

vehicle_make.map! do |make|
  p make
  make = "land rover"
  p make
end

vehicle_model.each do |make,model|
  puts "This #{make} is a #{model}"
end






