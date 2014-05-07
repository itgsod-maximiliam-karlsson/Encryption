
def encrypt(input, offset)
  raise ArgumentError, 'String must not be empty!' if input.empty?
  raise ArgumentError, 'Offset must not be zero!' if offset == 0

  upcase, output = input.upcase, String.new
  whitespace = [32, 9]

  upcase.each_char do |char|
    whitespace.include?(char.ord) ? output += char : output += offset(char, offset).chr
  end

  output
end

def offset(character, offset)
  offset_char = character.ord + offset
  return offset_char if offset_char <= 90
  (offset_char - 90) + 64
end
