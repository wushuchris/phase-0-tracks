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

class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

#driver code

puppy1 = Puppy.new
puppy1.fetch("tennis ball")