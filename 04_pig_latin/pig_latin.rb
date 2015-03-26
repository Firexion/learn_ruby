def vowels 
  ['a', 'e', 'i', 'o', 'u']
end

def translate(original)
	words = original.split(' ')
	words.map! do |word|
    consonants = ""
    word.each_char do |chr|
      break if !(consonants[-1] == 'q' && chr == 'u') && vowels.include?(chr)
        
      consonants += chr 
		end
    word.slice(consonants.length..-1) + consonants + "ay"
	end
  words.join(' ')
end