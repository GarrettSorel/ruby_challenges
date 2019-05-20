def caesar_cipher(str, num)
  #create a Hash with lowercase letters corresponding the the number provided
  #example: 5, {a => e}
  alphabet = Array('a'..'z')
  non_caps = Hash[alphabet.zip(alphabet.rotate(num))]

  #create a Hash with uppercase letters corresponding the the number provided
  #example: 5, {A => E}
  alphabet = Array('A'..'Z')
  caps = Hash[alphabet.zip(alphabet.rotate(num))]


  #merge two Hashes together
  encrypter = non_caps.merge(caps)

  #turn the string into an array, and transform array elements from Hash
  str.chars.map { |c| encrypter.fetch(c, c) }
end


puts caesar_cipher("Garrett", 7).join
puts caesar_cipher("The Cow jumped over the Moon", 4).join
