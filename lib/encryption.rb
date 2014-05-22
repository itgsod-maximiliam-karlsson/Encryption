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
  alpha_start, alpha_end = 65, 90
  offset_char = character.ord + offset

  return offset_char if offset_char <= alpha_end
  (offset_char - alpha_end) + (alpha_start - 1)
end
