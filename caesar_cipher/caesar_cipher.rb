def caesar_cipher(str, num)
  alphabet = Array('a'..'z')
  non_caps = Hash[alphabet.zip(alphabet.rotate(num))]

  alphabet = Array('A'..'Z')
  caps = Hash[alphabet.zip(alphabet.rotate(num))]

  encrypter = non_caps.merge(caps)

  str.chars.map { |c| encrypter.fetch(c, c) }
end

puts caesar_cipher("Garrett", 7).join
puts caesar_cipher("The Cow jumped over the Moon", 4).join
