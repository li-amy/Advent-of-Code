right = []
up = []
left = []
down = []
input = 361527
square = 1
spiral = 0
while square < input do
  if down.length == right.length
    spiral += 1
    square += spiral
    right.push(square)
    spiral += 1
  end
  if right.length == up.length + 1
    square += spiral
    up.push(square)
  end
  if up.length == left.length + 1
    square += spiral
    left.push(square)
  end
  if left.length == down.length + 1
    square += spiral
    down.push(square)
  end
end
if right.last <= input && input <= up.last
  if right.last == input
    puts right.length
  elsif up.last == input
    puts up.length
  elsif right.last < input && input < up.last
    corner = (up.last - right.last) / 2 + right.last
    if corner == input
      puts right.length + (up.last - right.last) / 2
    elsif right.last < input && input < corner
      puts right.length + (input - right.last)
    elsif corner < input && input < up.last
      puts up.length + (up.last - input)
    end
  end
elsif up.last <= input && input <= left.last
  if up.last == input
    puts up.length
  elsif left.last == input
    puts left.length
  elsif up.last < input && input < left.last
    corner = (left.last - up.last) / 2 + up.last
    if corner == input
      puts up.length + (left.last - up.last) / 2
    elsif up.last < input && input < corner
      puts up.length + (input - up.last)
    elsif corner < input && input < left.last
      puts left.length + (left.last - input)
    end
  end
elsif left.last <= input && input <= down.last
  if left.last == input
    puts left.length
  elsif down.last == input
    puts down.length
  elsif left.last < input && input < down.last
    corner = (down.last - left.last) / 2 + left.last
    if corner == input
      puts left.length + (down.last - left.last) / 2
    elsif left.last < input && input < corner
      puts left.length + (input - left.last)
    elsif corner < input && input < down.last
      puts down.length + (down.last - input)
    end
  end
end
