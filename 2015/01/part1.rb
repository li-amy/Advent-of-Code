parentheses = File.open('./input.txt', 'r') { |f| f.read }
floor = 0
parentheses.each_char { |c| 
    if c == '('
        floor += 1
    end
    if c == ')'
        floor -= 1
    end
}
puts floor
