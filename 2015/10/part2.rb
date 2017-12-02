def look_and_say(sequence)
  previous_char = nil
  sequence_arr = []
  segment_arr = []
  copy_count = 0
  new_sequence = ''
  sequence.each_char do | c |
    if c != previous_char
      if previous_char == nil
        copy_count += 1
      else
        new_sequence += copy_count.to_s + previous_char
        copy_count = 1
      end
    else
      copy_count += 1
    end
    previous_char = c
  end
  new_sequence += copy_count.to_s + sequence[-1]
  new_sequence
end

input = "1113122113"
previous_sequence = input
next_sequence = ''
50.times do | i | 
  next_sequence = look_and_say(previous_sequence)
  previous_sequence = next_sequence
end
puts next_sequence.length
