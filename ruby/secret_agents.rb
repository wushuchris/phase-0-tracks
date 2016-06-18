password = nil

def encrypt(password)
  index = 0
  encrypted_password = ""
  until index == password.length
    password[index] = password[index].next
    index += 1
  end
end

#Decrypt PseudoCode

  #1. Take a password and find where each letter is on the alphabet
  #2. Take that value and subtract 1
  #3. Set the new value as the index value for that letter
  #4. Move on to next letter until end of string

def decrypt(password)

  index = 0
  password_length = password.length
  alpha = "abcdefghijklmnopqrstuvwxyz"
  password_decrypted = ""

  until index == password_length
    password_test = password[index]

    test = alpha.index(password_test) - 1

    final = alpha[test]

    password_decrypted = password_decrypted + final
    #alpha.index(password[index])-1
    index += 1
  end
  p password_decrypted
end


puts "Please enter password."
password = gets.chomp


encrypt(password)
p password #<<< Debugging use
decrypt(password)
p password #<<<dubugging use