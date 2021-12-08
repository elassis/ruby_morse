def decode_char(char)
 dictionary = {".-"=>"A",  "-..."=>"B",  "-.-."=>"C", "-.."=>"D", "."=>"E", "..-."=>"F", "--."=>"G", "...."=>"H", ".."=>"I", ".---"=>"J", "-.-"=>"K", ".-.."=>"L", "--"=>"M", "-."=>"N",
   "---"=>"O", ".--."=>"P", "--.-"=>"Q", ".-."=>"R",
    "..."=>"S", "-"=>"T", "..-"=>"U", "...-"=>"V", ".--"=>"W", "-..-"=>"X", "-.--"=>"Y", "--.."=>"Z"}
 return dictionary[char]
end

def decode_word(word)
  splitArray = word.split(' ')
  decoded_word = ""
  splitArray.each do |word|
    decoded_word += decode_char(word)
  end
  return decoded_word
end

puts(decode_char(".-"))
puts(decode_word("-- -.--"))
