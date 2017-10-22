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
    wrapping_paper = 2*l*w + 2*w*h + 2*h*l
    slack = arr[0] * arr[1]
    curr_total = wrapping_paper + slack
    total += curr_total
  end
end
puts total
