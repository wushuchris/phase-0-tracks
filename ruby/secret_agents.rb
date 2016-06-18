def encrypt(password)
    index = 0
    until index == password.length
      if password[index] == "z"
        password[index] = "a"
      elsif password[index] == " "
        password[index] = " "
      else
      password[index] = password[index].next
      end
      index += 1
    end
 end

def decrypt(password)
   index = 0
   alpha = "abcdefghijklmnopqrstuvwxyz"
   until index == password.length
    if password[index] == " "
      password[index] = " "
    else
     password[index] = alpha[alpha.index(password[index])-1]
    end
    index += 1
   end
end



puts "Would you like to encrypt(1) or decrypt(2)"
selector = gets.to_i

puts "Enter Password"
password = gets.chomp

if selector == 1
  encrypt(password)
elsif selector == 2
  decrypt(password)
else
  puts "Invalid input"
end

p password

# I Cannot figure this out! I don't understand why it doesn't work
#decrypt(encrypt(password))
#p password

#encrypt(password)
#p password
#decrypt(password)
#p password