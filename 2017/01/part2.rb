digits = File.open('./input.txt', 'r') { |f| f.read }
total = digits.strip.length
halfway = total / 2
sum = 0
for i in 0..(total-1)
  first_digit = digits[i]
  if i >= halfway
    second_digit = digits[i-halfway]
  else
    second_digit = digits[i+halfway]
  end
#  puts "first digit: #{first_digit}"
#  puts "second digit: #{second_digit}"
  if first_digit == second_digit
    sum += first_digit.to_i
  end
end
puts sum
