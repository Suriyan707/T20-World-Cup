def map(array)
  result = []
  array.each do |element|
    result << yield(element)
  end
  result
end
numbers = [1, 2, 3, 4, 5]

numbers = map(numbers) { |num| num * 2 }
puts numbers.inspect

values = map(numbers) do |num|
  "Value: #{num}"
end

puts values.inspect