checksum = 0
File.open("./input.txt", "r") do |f|
  f.each_line do |line|
    values = line.strip.split(" ").map(&:to_i)
    difference = values.max - values.min
    checksum += difference
  end
end
puts checksum
