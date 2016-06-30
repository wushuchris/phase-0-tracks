module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + "!!!" + " :)"
  end

end

#driver code

p require_relative 'Shout'
p Shout.yell_angrily("Go Away")
p Shout.yell_happily("Hello")
