#hamster's name (the clerk names any hamsters who come in without name tags, so all hamsters have names)
#volume level from 1 to 10 (some people are light sleepers who won't adopt extra-squeaky hamsters)
#fur color
#whether the hamster is a good candidate for adoption estimated age

name = nil
volume = nil
fur = nil
adoption = nil
age = nil

puts "Name of Hamster?"
name = gets.chomp

puts "Volume Level? (1-10)"
volume = gets.to_i

puts "Fur Color?"
fur = gets.chomp

puts "Candidate for adoption?"
adoption = gets.chomp

puts "Estimated Age?"
age = gets.to_i

puts "You've entered the following data
        Name: #{name}
        Volume: #{volume}
        Fur Color: #{fur}
        Adoption candidate: #{adoption}
        Estimated Age: #{age}"

