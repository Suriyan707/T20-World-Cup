fact = ->(n) {
  if n == 0 || n == 1
    1
  else
    n * fact.call(n - 1)
  end
}

number = 5
fact = fact.call(number)

puts "The factorial of #{number} is #{fact}."