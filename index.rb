def decode_char(char)
  dictionary = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F',
                 '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M',
                 '-.' => 'N', '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R',
                 '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V',
                 '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z' }
  dictionary[char]
end

def decode_word(word)
  split_array = word.split
  decoded_word = ''
  split_array.each do |character|
    decoded_word += decode_char(character)
  end
  decoded_word
end

def decode_phrase(phrase)
  split_array_phrase = phrase.split('  ')
  decoded_phrase = ''
  split_array_phrase.each_with_index do |word, index|
    decoded_phrase += if index == split_array_phrase.length
                        decode_word(word)
                      else
                        "#{decode_word(word)} "
                      end
  end
  decoded_phrase
end

puts(decode_phrase(' .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'))
