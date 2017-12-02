total = 0
File.open("./input.txt", "r") do |f|
  f.each_line do |line|
    dimensions = line.split("x")
    l = dimensions[0].to_i
    w = dimensions[1].to_i
    h = dimensions[2].to_i
    arr = [l,w,h]
    arr = arr.sort
    arr = arr.take(2)
    bow = l*w*h
    ribbon = 2 * arr[0] + 2 * arr[1]
    curr_total = bow + ribbon 
    total += curr_total
  end
end
puts total
