code_chars = 0
str_chars = 0
File.open("./input.txt", "r") do |f|
  f.each_line do |line|
    literal = line.strip
    code_cnt = literal.length
    # count number of string characters
    str = literal[1..-2]
    i = 0
    str_cnt = 0
    while i < str.length do
      if str[i] == '\\'
        next_c = str[i+1]
        if (next_c == '\\') or (next_c == '"')
          str_cnt += 1
          i += 2
          next
        elsif next_c == 'x'
          str_cnt += 1
          i += 4
          next
        end
      else
        str_cnt += 1
        i += 1
      end
    end
    code_chars += code_cnt
    str_chars += str_cnt
  end
end
total = code_chars - str_chars
puts total
