#Hashes challenge DBC - Christopher Mendoza

#   a program that will allow an interior designer to enter the details of a given client: the client's name, age, number of children, decor theme, and so on (you can choose your own as long as it's a good mix of string, integer, and boolean data).

interior_hash = { client_name: nil, age: nil, number_of_children: nil, decor_theme: nil }

# Prompt the designer/user for all of this information.

puts "Hello what is your name?"
interior_hash[:client_name] = gets.chomp

puts "What is your age?"
interior_hash[:age] = gets.to_i

puts "How many children do you have?"
interior_hash[:number_of_children] = gets.to_i

puts "Is there a Decor Theme? (yes or no)"
decor_theme = gets.chomp

if decor_theme == "yes"
  interior_hash[:decor_theme] = true
elsif decor_theme == "no"
  interior_hash[:decor_theme] = false
else
  puts "I don't understand"
end

# Convert any user input to the appropriate data type.
#   I used if statement and entered into the hash

# Print the hash back out to the screen when the designer has answered all of the questions.

p interior_hash

# Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.

loop do

  puts "Would you like to make changes to any of your inputs? If so please select what you would like to change choices are 'client_name:', 'age', 'number_of_children', 'decor_theme', 'none'?"
  update = gets.chomp

  if update == "client_name"
    puts "What would you like to change the client's name to?"
    interior_hash[:client_name] = gets.chomp
  elsif update == "age"
    puts "what would you like to change the client's age to?"
    interior_hash[:age] = gets.to_i
  elsif update == "number of childen"
    puts "How many children does the client have?"
    interior_hash[:number_of_children] = gets.to_i
  elsif update == "decor_theme"
    puts "Is there a decor theme?"
    interior_hash[:decor_theme] = gets.chomp
  elsif update == "none"
    break
  else
    puts "I don't understand"
  end
end


if interior_hash[:decor_theme] == "yes"
  interior_hash[:decor_theme] = true
else
  interior_hash[:decor_theme] = false
end

# Print the latest version of the hash, and exit the program.
p interior_hash
