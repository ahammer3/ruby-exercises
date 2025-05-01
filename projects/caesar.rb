def caesar_cipher(text, shift)
  shift = shift % 26
  encrypted_text = text.chars.map do |char|
    if char.match?(/[A-Za-z]/)
      base = char.ord < 91 ? 'A'.ord : 'a'.ord
      ((char.ord - base + shift) % 26 + base).chr
    else
      char
    end
  end
  encrypted_text.join
end

puts "message:"
message = gets.chomp

puts "shift:"
shift = gets.chomp.to_i

puts caesar_cipher(message, shift)
