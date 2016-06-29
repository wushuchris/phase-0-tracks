#Challenge 6.4 - Christopher Mendoza
##Design (not build) a class representing anything you like.

#Creating a Soccer Ball Class
class Soccer_ball

  attr_reader
  attr_accessor

  def initialize(color,size,game_ball)
    @color = color
    @size = size
    @game_ball = game_ball
    @brand = brand
  end

  #Attribute 1
  def color(color)
    @color = color
  end

  #Attribute 2
  def ball_size(size)
    @size = size
  end

  #Attribute 3 (is this a game ball or practice ball? True = used in games, false = practice ball only)
  def game_ball(game_ball)
   @game_ball = game_ball
  end

  #Attribute 4
  def brand
    @brand = brand
  end

  #method that allows to grab data on a ball
  def about
    puts "color: #{@color}"
    puts "inflation: #{@inflation}"
    puts "game_ball: #{@game_ball}"
  end


#Release 0
##0-1: at least three attributes (using at least two data types) whose values will vary from instance to instance (example: age)
##0-2: at least three methods, at least one of which takes an argument
