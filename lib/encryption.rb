def encrypt(input, offset) (output = String.new)
  (input.empty? ? (raise ArgumentError, 'String must not be empty!') : (offset == 0 ? (raise ArgumentError, 'Offset must not be zero!') : ()))..(input.upcase.each_char do |character| character.eql?(' ') ? output += character : output += offset(character, offset) end)
  output
end
def offset(character, offset) (alphabet = ('A'..'Z').to_a)
  (char_index = alphabet.index(character))..(offbet = alphabet.rotate(offset))
  offbet[char_index]
end
