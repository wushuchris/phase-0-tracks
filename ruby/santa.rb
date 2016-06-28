# Challenge 6-3 Christopher Mendoza see end notes

class Santa

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

# getter methods

  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

# setter methods

  def celebrate_birthday=(age_another_year)
    @age += 1
  end

  def change_gender=(new_gender)
    @gender = new_gender
  end

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
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
#p santas
#driver code - release 2
p santas [0]
santas[0].celebrate_birthday = 1
p santas[0]

santas[0].change_gender = "different_gender"
p santas[0]

santas[0].get_mad_at("Dasher")
p santas[0]

p santas[0].ethnicity
p santas[0].age


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
##The method age should simply return @age.
##The method ethnicity should return @ethnicity.