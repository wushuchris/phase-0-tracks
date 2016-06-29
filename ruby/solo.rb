#Challenge 6.4 - Christopher Mendoza end notes below

#Creating a Soccer Ball Class
class Soccer_ball

  attr_reader :game_ball
  attr_accessor :color, :size, :brand, :team_name, :club_name, :ball_number

  def initialize
    puts "creating soccer ball instance..."
    @color = nil
    @size = nil
    @game_ball = false
    @brand = nil
    @club_name = nil
    @team_name = nil
    @ball_number = nil
  end

  def color
    puts "What color is the ball?"
    @color = gets.chomp
  end

  def size
    puts "What size is the ball?"
    @size = gets.to_i
  end

  #Attribute (is this a game ball or practice ball? True = used in games, false = practice ball only)
  def game_ball
   @game_ball = game_ball
  end

  def brand
    puts "What brand is the ball?"
    @brand = gets.chomp
  end

  def team_name
    puts "What Team is this ball assigned to?"
    @team_name = gets.chomp
  end

  def club_name
    puts "What Club does this ball belong to?"
    @club_name = gets.chomp
  end

  def ball_number
    puts "What player number to assign to this ball"
    @ball_number = gets.to_i
  end

  def make_change(make_change)

    another_change = nil

    until another_change == "n" do
    puts "What attribute would you like to change? [1] = color [2] = size [3] = brand [4] = club name [5] = team name [6] = game ball"

    attribute_change = gets.to_i

      if attribute_change == 1
      puts "What color is the ball?"
      @color = gets.chomp

      elsif attribute_change == 2
      puts "What is the size of the ball?"
      @size = gets.chomp

      elsif attribute_change == 3
      puts "What brand is the ball?"
      @brand = gets.chomp

      elsif attribute_change == 4
      puts "What club does the ball belong too?"
      @club_name = gets.chomp

      elsif attribute_change == 5
      puts "What team does the ball belong too?"
      @team_name = gets.chomp

      elsif attribute_change == 6
      puts "I'm sorry the game ball status may not be changed.  All game balls are provided by the league and if the league ball is impaired a referree may choose a ball from either team to replace the league ball only at time of play"

      else
      puts "I don't understand"
      end
      puts "would you like to make another change? (y or n)"
      another_change = gets.chomp
    end
  end

  #method that allows to grab data on a ball
  def about
    puts "color: #{@color}"
    puts "size: #{@size}"
    puts "brand: #{@brand}"
    puts "game_ball: #{@game_ball}"
    puts "club_name: #{@club_name}"
    puts "team_name: #{@team_name}"
    puts "ball_number: #{@ball_number}"
    puts "------------------------"
  end

end

#user interface
soccer_balls_array = []
number_of_soccer_balls = nil

puts "Welcome to the Soccer Ball Manager"
puts "How many soccer balls to create?"
number_of_soccer_balls = gets.to_i

number_of_soccer_balls.times do |i|
  soccer_balls = Soccer_ball.new
  soccer_balls_array << soccer_balls
  soccer_balls.color
  soccer_balls.size
  soccer_balls.brand
  soccer_balls.club_name
  soccer_balls.team_name
  soccer_balls.ball_number
  puts "Report for this ball"
  puts "--------------------"
  soccer_balls.about
  puts "Do you want to make a change? (y or n)"
  make_change = gets.chomp
    if make_change == "y"
      soccer_balls.make_change(make_change)
    else make_change == "n"
      puts "Thanks"
    end
    soccer_balls.about
end

puts "Here is your report for all balls created"
puts "------------------------"
soccer_balls_array.each { |x| x.about }


#Release 0
##0-1: at least three attributes (using at least two data types) whose values will vary from instance to instance (example: age)
##0-2: at least three methods, at least one of which takes an argument

#Release 1
## Write the class in code
## use attr_reader and attr_accessor

#Release 2
##Modify your program so that it has a user interface (a user can interact with your program via the command line).

##Your user should be allowed to create as many instances of your class as they like.

##Prompt the user for each attribute, and don't forget to convert their input to the appropriate data type. Store these class instances in an array.

##When the user indicates that they are finished creating instances, loop through the array and print out the attributes of each instance as a confirmation message of what was created. -- I've asked them up front how many balls to create.
