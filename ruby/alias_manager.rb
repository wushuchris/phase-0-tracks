### DBC Challenge 5.6

#   pseudocode and write a method that takes a spy's real name (e.g., "Felicia Torres") and creates a fake name with it by doing the following:

agents = []

loop do
  puts "Enter your first and last name (ex. Felicia Torres), Please be sure to type 'quit' when done encoding names"
  spy = gets.chomp
  if spy != "quit"
    # 1. Swapping the first and last name.
    newspy = spy.split
    newspy.insert(1," ")
    reverse_newspy = newspy.reverse!.join

    # 2. Changing all of the vowels (a, e, i, o, or u) to the next vowel in  'aeiou', and all of the consonants (everything else besides the      vowels) to the next consonant in the alphabet. So 'a' would become   'e', 'u' would become 'a', and 'd' would become 'f'.


    def encoder(reverse_newspy)

      vowels = %w[ a e i o u ]
      consonants = %w[ b c d f g h j k l m n p q r s t v w x y z ]

      split_reverse_newspy = reverse_newspy.downcase.split(//)

      encoded_name = split_reverse_newspy.map do |character|
        if vowels.include?(character)
          vowels.rotate(1)[vowels.index(character)]
        elsif consonants.include?(character)
          consonants.rotate(1)[consonants.index(character)]
        elsif character == "u"
          character = "a"
        elseif character == "z"
          character = "b"
        else character = " "
        end
      end
      p encoded_name.join
    end

    encoded_name = encoder(reverse_newspy)
    encoded_name_array = encoded_name.split
    capitalized_encoded_last_name = encoded_name_array[0].capitalize
    capitalized_encoded_first_name = encoded_name_array[1].capitalize
    capitalized_encoded_full_name = [ capitalized_encoded_first_name, " ", capitalized_encoded_last_name ]
    spy_name = capitalized_encoded_full_name.join
    agents.push(spy_name)

    puts "Your Encoded Spy Name is #{spy_name}, now go out and save the world like a boss."
  else
    break
  end
end

p agents