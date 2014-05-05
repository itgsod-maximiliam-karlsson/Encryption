# Returns the integer ordinal of a one character string.
# Uppercase characters (A-Z) has the range 65 to 90.
# p ' '.ord
# p 'a'.ord
# p 'A'.ord

# Converts an integer to the original character.
# p 32.chr
# p 97.chr
# p 65.chr

def encrypt(input, offset)
  raise ArgumentError, 'String must not be empty!' if input.empty?
  raise ArgumentError, 'Offset must not be zero!' if offset == 0

  upcase_input = input.upcase
  output = ""

  upcase_input.each_char do |char|
    char == " " ? output += char : output += offset(char, offset).chr
  end

  output
end

def offset(character, amount)
  offset_char = character.ord + amount
  return offset_char if offset_char <= 90

  (90 - offset_char).abs + 64
end
