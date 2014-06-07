def encrypt(input, offset)
  raise ArgumentError, 'String must not be empty!' if input.empty?
  raise ArgumentError, 'Offset must not be zero!' if offset == 0

  output = String.new

  input.upcase.each_char do |character|
    character.eql?(' ') ? output += character : output += offset(character, offset)
  end

  output
end

def offset(character, offset)
  alphabet = ('A'..'Z').to_a
  char_index = alphabet.index(character)
  offbet = alphabet.rotate(offset)
  offbet[char_index]
end
