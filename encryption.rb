# Returns the integer ordinal of a one character string.
p ' '.ord
p 'a'.ord
p 'A'.ord

# Converts an integer to the original character.
p 32.chr
p 97.chr
p 65.chr

def encrypt(shift = 0, string)(output)
  # Loop through all characters in the string.
  string.each do |char|
    # Ignore whitespace characters.
    if char.ord.eql?(32)
      output += char
    end
  end
end
