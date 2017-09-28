require 'digest'

input = "yzbqklnj"
i = 1
while i > 0 do
    message = input + i.to_s
    md5 = Digest::MD5.new
    md5 <<  message
    hash = md5.hexdigest
    if hash.start_with?('000000')
        puts i
        break
    end      
    i += 1
end
