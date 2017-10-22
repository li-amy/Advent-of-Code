parentheses = File.open('./input.txt', 'r') { |f| f.read }
floor = 0
position = 1
parentheses.each_char { |c| 
    if c == '('
        floor += 1
    end
    if c == ')'
        floor -= 1
    end
    break if floor == -1 
    position += 1
}
puts position
