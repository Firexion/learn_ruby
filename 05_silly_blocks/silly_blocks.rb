def reverser
  words = yield.split(' ')
  words.each { |word| word.reverse! }
  words.join(' ')
end

def adder(x = 1)
  yield + x
end

def repeater(x = 1)
  (0...x).each { yield }
end