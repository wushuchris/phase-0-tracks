name = nil
age = nil
year_born = nil
garlic_bread = nil
health_insurance = nil

puts "Hello and welcome to the Vampire detection protocol. What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.to_i

puts "What year were you born? (YYYY)"
year_born = gets.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
garlic_bread = gets.chomp

puts "Would you like to enroll in the company’s health insurance? (yes/no)"
health_insurance = gets.chomp