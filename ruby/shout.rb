#Challenge 6-5 Christopher Mendoza

#module Shout - mixin version
module Shout


  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words + "!!!" + "  :)"
  end

end

class Human
  include Shout
end

class Animal
  include Shout
end

# driver code - release 3
human = Human.new
p human.yell_angrily("Go Away")
p human.yell_happily("Nice Kitty")
animal = Animal.new
p animal.yell_angrily("Roar--grrr...")
p animal.yell_happily("little roar")



#module Shout - non mixin
#
#  def self.yell_angrily(words)
#    words + "!!!" + " :("
#  end
#
#  def self.yell_happily(words)
#    words + "!!!" + " :)"
#  end
#
#end

#driver code - Release 1

#require_relative 'Shout'
#p Shout.yell_angrily("Go Away")
#p Shout.yell_happily("Hello")


