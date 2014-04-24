# Returns the integer ordinal of a one character string.
# Uppercase characters (A-Z) has the range 65 to 90.
p ' '.ord
p 'a'.ord
p 'A'.ord

# Converts an integer to the original character.
p 32.chr
p 97.chr
p 65.chr

def encrypt(shift = 0, input)(output)
  # Loop through all characters in the string.
  input.each do |char|
    # Ignore whitespace characters.
    if char.ord.eql?(32)
      output += char
    else
      output += shift(char, shift)
    end
  end
end

def shift(char, amount)
end
