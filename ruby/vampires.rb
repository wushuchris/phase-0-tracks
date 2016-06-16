name = nil
age = nil
year_born = nil
garlic_bread = nil
health_insurance = nil
age_calc = nil
current_year = 2016
counter = nil
allergies = nil

puts "How many people to process?"
counter = gets.to_i

counter.times do

  puts "Hello and welcome to the Vampire detection protocol. What is your name?"
  name = gets.chomp

  puts "How old are you?"
  age = gets.to_i

  puts "What year were you born? (YYYY)"
  year_born = gets.to_i

  def age_calc(current_year,year_born)
    age_calc = current_year - year_born
  end

  age_calc = age_calc(current_year,year_born)
  #puts "#{age_calc}" <<< Turn this on to check what is in variable while testing in repl.

  puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
  garlic_bread = gets.chomp
  case garlic_bread
    when garlic_bread = 'yes','y','Y','Yes'
      garlic_bread = true
    when garlic_bread = 'no','n','N','No'
      garlic_bread = false
  end
  #puts "#{garlic_bread}" <<< Turn this on to check what is in variable while testing in repl.

  puts "Would you like to enroll in the company’s health insurance? (yes/no)"
  health_insurance = gets.chomp
  case health_insurance
    when health_insurance = 'yes','y','Y','Yes'
      health_insurance = true
    when health_insurance = 'no','n','N','No'
      health_insurance = false
  end
  #puts "#{health_insurance}" <<< Turn this on to check what is in variable while testing in repl.

  puts "What allergies do you have? Please enter your allergies one at a time and when you've completed telling us all of your allergies please enter 'done'"
  puts "Enter Allergy"
  allergies = gets.chomp
  until allergies == "done" || allergies == "sunshine"
    puts "Enter Allergy"
    allergies = gets.chomp
  end


  puts "ACTIVATING VAMPIRE DETECTION ALGORITHM"

  #Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
  if name == "Drake Cula" || name == "Tu Fang" || name == "Lestat"
      puts "Definitely a vampire - Asset Containment Unit is on its way, we want to run experiments on you."
  #If allergies is sunshine
    elsif allergies == "sunshine"
      puts "Probably a vampire - Please step into the sunlight for further testing."
  #If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
    elsif age != age_calc && garlic_bread == false && health_insurance == false
      puts "Almost certainly a vampire - The brute squad and terminator robots are on their way"
  #If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
    elsif age != age_calc && (garlic_bread == false || health_insurance == false)
      puts "Probably a vampire - The brute squad is on their way!"
  #If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
    elsif age == age_calc && (garlic_bread == true || health_insurance == true)
      puts "Probably not a vampire - please proceed"
  #Otherwise, print “Results inconclusive.”
    else
      puts "Results inconclusive - the doctor has been dispatched for visual analysis."
  end
  puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end
