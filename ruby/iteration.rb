def thirsty
  customer1 = "Joe"
  puts "welcome to our bar #{customer1}, would you like a drink?"
  yield
end

thirsty { puts "Yes!" }