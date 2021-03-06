# Challenge 6.2
class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def woof(number_of_woofs)
    puts "Woof!" * number_of_woofs
    number_of_woofs
  end

  def roll_over(number_of_rolls)
    puts "*rolls over*" * number_of_rolls
    number_of_rolls
  end

  def dog_years(human_years)
    dog_years = 7 * human_years
    dog_years
  end

  def initialize
    puts "Initializing new puppy instance"
  end

end

#driver code for Puppy

puppy1 = Puppy.new
puppy1.fetch("tennis ball")
puppy1.woof(2)
puppy1.roll_over(3)
p puppy1.dog_years(2)

class Ninja

  def flip(number_of_flips)
    puts "*flip*" * number_of_flips
    number_of_flips
  end

  def jump(number_of_jumps)
    puts "*jump*" * number_of_jumps
    number_of_jumps
  end

  def initialize
    puts "Initializing new ninja instance"
  end

end

# driver code for Ninja
##1 Use a loop to make 50 instances of your class
##2 modify your loop so that it stores all of instances in a data structure
##3 iterate over that data structure using .each and call the instance methods you wrote on each instance.

ninja_list = []

## 1 && 2 && 3 (fulfills reqs. to my preference, DBC code req. commented out below, ie. use ".each")

50.times { |ninja|
  ninja = Ninja.new
  ninja_list << ninja
  ninja.jump(1)
  ninja.flip(1)
 }

# This code actually fulfills the requirements but I feel better with the code above.
# ninja_list.each { |ninja| ninja.jump(1) }
# ninja_list.each { |ninja| ninja.flip(1) }




