$booklet = Hash.new
File.open("./input0.txt", "r") do |f|
  f.each_line do |line|
    instruction = line.split("->")
    left_side = instruction[0].split(" ")
    right_side = instruction[1][1..-1].strip
    $booklet[right_side] = left_side
  end
end

def eval ( wire )
  if wire.to_i.to_s == wire.to_s
    return wire.to_i
  end
  input = $booklet[wire]
  if input.length == 1
    if input[0].to_i.to_s == input[0].to_s
      return input[0].to_i
    else 
      signal = eval(input[0])
    end
  elsif input[1] == "AND"
    left_sig = eval(input[0])
    right_sig = eval(input[2])
    signal = left_sig & right_sig
  elsif input[1] == "OR"
    left_sig = eval(input[0])
    right_sig = eval(input[2])
    signal = left_sig | right_sig
  elsif input[1] == "LSHIFT"
    left_sig = eval(input[0])
    pos = input[2].to_i
    signal = left_sig << pos
  elsif input[1] == "RSHIFT"
    left_sig = eval(input[0])
    pos = input[2].to_i
    signal = left_sig >> pos
  elsif input[0] == "NOT"
    sig = eval(input[1])
    signal = sig ^ 65535
  end
  $booklet[wire] = [signal]
  return signal
end

value = eval("a")

puts value
