rows, cols = 1000, 1000
grid = Array.new(rows) { Array.new(cols, 0) }
File.open('./input.txt', 'r') do |f|
    f.each_line do |line|
        instructions = line.split(" ")
        action = instructions[0]
        start_coord = instructions[1]
        end_coord = instructions[3]
        if action == "turn"
            action = action + " " + instructions[1]
            start_coord = instructions[2]
            end_coord = instructions[4]
        end
        start_x = start_coord.split(",")[0].to_i
        start_y = start_coord.split(",")[1].to_i
        end_x = end_coord.split(",")[0].to_i
        end_y = end_coord.split(",")[1].to_i
        for row in start_x..end_x
            for col in start_y..end_y
                if action == "toggle"
                    if grid[row][col] == 0 
                        grid[row][col] = 1
                    else # on
                        grid[row][col] = 0
                    end 
                elsif action == "turn on"
                    grid[row][col] = 1
                else # turn off
                    grid[row][col] = 0
                end 
            end
        end
    end
end
lights = 0
for row in 0..999
    for col in 0..999
        if grid[row][col] == 1
            lights += 1
        end
    end
end
puts lights
