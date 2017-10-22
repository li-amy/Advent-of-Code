code_chars = 0
encoded_chars = 0
File.open("./input.txt", "r") do |f|
  f.each_line do |line|
    literal = line.strip
    code_cnt = literal.length
    #str = literal[1..-2]
    i = 0
    str_cnt = 1 # for the double quote
    while i < code_cnt do
      c = literal[i]
      if (c == '"') or (c == '\\')
        # " -> \" or \ -> \\
        str_cnt += 2
        i += 1
      else
        str_cnt += 1
        i += 1
      end
    end
    str_cnt += 1 # for the double quote
    code_chars += code_cnt
    encoded_chars += str_cnt
  end
end
total = encoded_chars - code_chars
puts total
