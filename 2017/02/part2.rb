sum = 0
File.open("./input.txt", "r") do |f|
  f.each_line do |line|
    values = line.strip.split(" ").map(&:to_i)
    values = values.sort
    result = 0
    values.each do |value|
      i = 2
      result = 1
      while (value * i < values.max) do
        if values.include?(value * i)
          result = i
        end
        i += 1
      end
      break if result != 1
    end
    sum += result
  end
end
puts sum
