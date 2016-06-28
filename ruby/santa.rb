# Release 0
##1 A speak method that will print "Ho, ho, ho! Haaaappy holidays!" (Santa has been working on being more inclusive.)
##2 An eat_milk_and_cookies method that takes a cookie type (example: "snickerdoodle") as a parameter and prints "That was a good <type of cookie here>!"
##3 An initialize method that prints "Initializing Santa instance ...".

#Release 1
#Update your Santa class with the following attributes:

##gender, which will be a string passed in on initialization

##ethnicity, which will be a string passed in on initialization

##reindeer_ranking, an array of reindeer from most preferred to least preferred; This is not passed in on initialization; it simply gets a default value of ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

##age, which is not passed in on initialization and defaults to 0

class Santa

  def initialize(gender,ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

  def reindeer_ranking
    reindeer_ranking_array = [ "Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen" ]
  end

  def about
    puts "gender: #{@gender}"
    puts "ethniciity: #{@ethnicity}"
    puts "age: #{@age}"
  end

end

#driver code - release 0
#santa1 = Santa.new("male","white")
#santa1.speak
#santa1.eat_milk_and_cookies("chocolate")
#santa1.about

#driver code - release 1
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
p santas


