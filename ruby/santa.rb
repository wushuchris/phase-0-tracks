# Release 0
##1 A speak method that will print "Ho, ho, ho! Haaaappy holidays!" (Santa has been working on being more inclusive.)
##2 An eat_milk_and_cookies method that takes a cookie type (example: "snickerdoodle") as a parameter and prints "That was a good <type of cookie here>!"
##3 An initialize method that prints "Initializing Santa instance ...".

class Santa

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

  def initialize
    puts "Initializing Santa instance..."
  end

end

#driver code
santa1 = Santa.new
santa1.speak
santa1.eat_milk_and_cookies("chocolate")
