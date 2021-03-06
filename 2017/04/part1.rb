valid_passphrases = 0
File.open('./input.txt', 'r') do |f|
  f.each_line do |line|
    values = line.strip.split(' ')
    passwords = Hash.new(0)
    valid = true
    values.each do |word|
      if passwords.has_key?(word)
        passwords[word] += 1
        valid = false
      else
        passwords[word] = 0
      end
    end
    if valid
      valid_passphrases += 1
    end
  end
end
puts valid_passphrases
