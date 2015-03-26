class Book
  def title
    @title
  end

  def title=(title)
    words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "an", "but", "in", "of"]
    words = title.split(' ')
    words[0].capitalize!
    words.each{ |word| word.capitalize! unless words_no_cap.include?(word) }

    @title = words.join(' ')
  end
end