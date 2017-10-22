total = 0
File.open("./input.txt", "r") do |f|
    f.each_line do |line|
        str = line.strip
        first_rule = false
        second_rule = false
        char_index = 0
        str.each_char do |c|
            first_char = c
            second_char = str[char_index + 1]
            if second_char.nil? 
                break
            end
            pair = first_char.to_s + second_char.to_s
            search_str = str[char_index+2..-1]
            if search_str.include?(pair) 
                first_rule = true
                break
            end
            char_index += 1
        end
        char_index = 0
        str.each_char do |c|
            first_char = c
            third_char = str[char_index + 2]
            if third_char.nil?
                break
            end
            if first_char == third_char
                second_rule = true
                break
            end
            char_index += 1
        end
        if first_rule and second_rule
            total += 1
        end
    end
end
puts total
