# Returns the integer ordinal of a one character string.
# Uppercase characters (A-Z) has the range 65 to 90.
# p ' '.ord
# p 'a'.ord
# p 'A'.ord

# Converts an integer to the original character.
# p 32.chr
# p 97.chr
# p 65.chr

def encrypt(input, offset = 0)(output)
  input.each do |char|
    if char.ord.eql?(32)
      output += char
    else
      output += offset(char, offset)
    end
  end
end

def offset(char, amount)
end
