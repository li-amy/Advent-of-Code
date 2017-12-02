moves = File.open('./input.txt', 'r') { |f| f.read }
houses = Hash.new(0)
houses = { [0,0] => 1 }
x_santa = 0
y_santa = 0
x_robo = 0
y_robo = 0
santa = true
moves.each_char { |c| 
    if santa
        if c == '^'
            y_santa += 1
        elsif c == 'v'
            y_santa -= 1
        elsif c == '>'
            x_santa += 1
        elsif c == '<'
            x_santa -= 1
        else
        end
        coord = [x_santa,y_santa]
        if houses.has_key?(coord)
            houses[coord] += 1
        else 
            houses[coord] = 1
        end
        santa = false
    else 
        if c == '^'
            y_robo += 1
        elsif c == 'v'
            y_robo -= 1
        elsif c == '>'
            x_robo += 1
        elsif c == '<'
            x_robo -= 1
        else
        end
        coord = [x_robo,y_robo]
        if houses.has_key?(coord)
            houses[coord] += 1
        else 
            houses[coord] = 1
        end
        santa = true
    end
}
puts houses.size
