def echo(say)
	say
end

def shout(say)
	say.upcase
end

def repeat(say, num=2)
  ("#{say} " * num).strip
end

def start_of_word(word, num)
  word.slice(0, num)
end

def first_word(words)
  words.split(' ')[0]
end

def titleize(title)
  words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
  words = title.split(' ')
  words[0].capitalize!
  
  words.each do |word|
    word.capitalize! unless words_no_cap.include?(word)
  end

  words.join(' ')
end