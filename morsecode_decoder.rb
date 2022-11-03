DICTIONARY = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z'
}.freeze

# Create a method to decode a Morse code character, takes a string parameter,
# and return the corresponding character in uppercase (e.g. decode_char(".-") returns "A").

def decode_char(morse_char)
  DICTIONARY[morse_char]
end

puts decode_char('.-')

# Create a method to decode an entire word in Morse code, takes a string parameter,
# and return the string representation. Every character in a word will be separated by a single space 
# (e.g. decode_word("-- -.--") returns "MY").

def decode_word(morse_word)
  str = ''
  morse_word.split.each do |word|
    str += decode_char(word).to_s
  end
  str
end

puts decode_word('-- -.--')

# Create a method to decode the entire message in Morse code, takes a string parameter,
# and return the string representation. Every word will be separated by 3 spaces (e.g. decode("-- -.--   -. .- -- .")

def decode_message(morse_message)
  morse_message
    .split('  ')
    .reject do |char|
      char == ''
    end
    .map do |word|
      word.split.map { |char| DICTIONARY[char] }.join
    end
    .join(' ')
end

puts decode_message('      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
