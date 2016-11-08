def is_upper?(c)
    c != c.downcase
end
def shift_char_by(char_to_shift, shift_factor)
	alphabets = 'a'.upto('z').to_a
	alphabets_upcase = 'A'.upto('Z').to_a
	if(alphabets.include?(char_to_shift) || alphabets_upcase.include?(char_to_shift))
		if(is_upper?(char_to_shift))
			char_index = alphabets_upcase.index(char_to_shift)
		else
			char_index = alphabets.index(char_to_shift)
		end
		char_index += shift_factor
		if(char_index > 25)
			char_index = char_index - 26
		end
		if(is_upper?(char_to_shift))
			alphabets_upcase[char_index]
		else
			alphabets[char_index]
		end
	else
		char_to_shift
	end
end

def caesar_cipher(string_to_encrypt, shift_factor)
	cleanedup_input = string_to_encrypt
	cleanedup_input.length.times do |i|
		cleanedup_input[i] = shift_char_by(cleanedup_input[i], shift_factor)
	end
	cleanedup_input
end

puts caesar_cipher("What a string!", 5)