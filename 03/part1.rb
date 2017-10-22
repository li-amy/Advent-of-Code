moves = File.open('./input.txt', 'r') { |f| f.read }
houses = { [0,0] => 1 }
x = 0
y = 0
moves.each_char { |c| 
    if c == '^'
        y += 1
    elsif c == 'v'
        y -= 1
    elsif c == '>'
        x += 1
    elsif c == '<'
        x -= 1
    else
    end
    coord = [x,y]
    if houses.has_key?(coord)
        houses[coord] += 1
    else 
        houses[coord] = 1
    end
}
puts houses.size
