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
  end

end

#driver code

puppy1 = Puppy.new
puppy1.fetch("tennis ball")
puppy1.woof(2)