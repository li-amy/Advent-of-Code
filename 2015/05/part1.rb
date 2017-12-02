vowels = ['a', 'e', 'i', 'o', 'u']
bad_strs = ["ab", "cd", "pq", "xy"]
total = 0
File.open("./input.txt", "r") do |f|
    f.each_line do |line|
        str = line.strip
        nice = true 
        bad_strs.each do |bad| 
            if str.include?(bad) 
                nice = false 
                break
            end
        end
        vowel_cnt = 0
        str.each_char do |c|
            if vowels.include?(c) 
                vowel_cnt += 1
            end
        end
        double_char = false
        char_index = 0
        str.each_char do |c|
            first_char = str[char_index]
            second_char = str[char_index + 1]
            if first_char == second_char 
                double_char = true
            end
            char_index += 1
        end
        if nice and (vowel_cnt >= 3) and double_char
            total += 1
        end
    end
end
puts total
