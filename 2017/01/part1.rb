digits = File.open('./input.txt', 'r') { |f| f.read }
total = digits.strip.length
sum = 0
for i in 0..(total-1)
  first_digit = digits[i]
  if i == (total-1)
    second_digit = digits[0]
  else
    second_digit = digits[i+1]
  end
  if first_digit == second_digit
    sum += first_digit.to_i
  end
#  print "first digit: #{first_digit}"
#  print "second digit: #{second_digit}"
end
puts sum
