# Challenge 6-3 Christopher Mendoza see end notes

class Santa
  attr_reader :ethnicity
  attr_accessor :age, :gender

  def initialize(gender,ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    @reindeer_ranking = [
      "Rudolph",
      "Dasher",
      "Dancer",
      "Prancer",
      "Vixen",
      "Comet",
      "Cupid",
      "Donner",
      "Blitzen"
    ]
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

  def about
    puts "gender: #{@gender}"
    puts "ethniciity: #{@ethnicity}"
    puts "age: #{@age}"
  end

# getter methods - Moved to top of class in release 3 (i'm just showing my work)

  #def age
  #  @age
  #end

  #def ethnicity
  #  @ethnicity
  #end

# setter methods

  def celebrate_birthday=(age_another_year)
    @age += 1
  end

  #def change_gender=(new_gender) #>>> Moved to top of class in release 3 (just showing work)
  #  @gender = new_gender
  #end

  def get_mad_at=(reindeer_name)
    if @reindeer_ranking.include?(reindeer_name)
      @reindeer_ranking.delete(reindeer_name)
      @reindeer_ranking.insert(@reindeer_ranking.length, reindeer_name)
    else
      reindeer_name = reindeer_name
    end
  end

end

#driver code - release 0
#santa1 = Santa.new("male","white")
#santa1.speak
#santa1.eat_milk_and_cookies("chocolate")
#santa1.about

#driver code - release 1
#santas = []
#santas << Santa.new("agender", "black")
#santas << Santa.new("female", "Latino")
#santas << Santa.new("bigender", "white")
#santas << Santa.new("male", "Japanese")
#santas << Santa.new("female", "prefer not to say")
#santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
#santas << Santa.new("N/A", "N/A")
#p santas
#driver code - release 2
#p santas [0]
#santas[0].celebrate_birthday = 1
#p santas[0]

#santas[0].change_gender = "female"
#p santas[0]

#santas[0].gender = "female" #new driver code for releae 4
#p santas[0]

#santas[0].get_mad_at = "Dasher"
#p santas[0]

#p santas[0].ethnicity
#p santas[0].age

#driver code - release 3
#p santas[0].ethnicity
#p santas[0].age = 22

#driver code - release 4

santas = []
number_of_santas = nil

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

puts "How many Santas do you want to create?"
number_of_santas = gets.to_i

number_of_santas.times do |i|
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
end
santas.each { |x| x.age = rand(0..140) }

p santas


# Release 0

##0-1 A speak method that will print "Ho, ho, ho! Haaaappy holidays!" (Santa has been working on being more inclusive.)
##0-2 An eat_milk_and_cookies method that takes a cookie type (example: "snickerdoodle") as a parameter and prints "That was a good <type of cookie here>!"
##0-3 An initialize method that prints "Initializing Santa instance ...".

# Release 1
##Update your Santa class with the following attributes:

##1-1 gender, which will be a string passed in on initialization
##1-2 ethnicity, which will be a string passed in on initialization
##1-3 reindeer_ranking, an array of reindeer from most preferred to least preferred; This is not passed in on initialization; it simply gets a default value of ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
##age, which is not passed in on initialization and defaults to 0

#Release 2
##Add three attribute-changing methods to your Santa class:
##2-1 celebrate_birthday should age Santa by one year.
##2-2 get_mad_at can take a reindeer's name as an argument, and move that reindeer in last place in the reindeer rankings. Vixen knows what he did.
##2-3 The @gender attribute should have a setter method that allows @gender to be reassigned from outside the class definition.

#Add two "getter" methods as well:
##2-4 The method age should simply return @age.
##2-5 The method ethnicity should return @ethnicity.

#Release 3
#Refactor with attr_reader and attr_accessor

#Release 4
#Write a program that creates lots of Santas.

##4-1 Use our array of example genders and an array of example ethnicities to create your Santas with a randomly selected gender and a randomly selected ethnicity. (How do you randomly select an array item? The Array documentation should be able to help you out there!)

##4-2 Set your new Santa's age to a random number between 0 and 140.

##No need to store your Santas in a data structure, but your program should print out the attributes of each Santa using the instance methods that give you access to that data.