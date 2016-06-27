# Challenge 6.1

#Puppy Class

#Species
#Characteristics
#Friendly
#Eye Count
#Tail Length
#Color

#Behavior
#Jump
#Run

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

end

#driver code

puppy1 = Puppy.new
puppy1.fetch("tennis ball")
puppy1.woof(2)
puppy1.roll_over(3)
p puppy1.dog_years(2)
