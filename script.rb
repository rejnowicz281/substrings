dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  string.downcase!
  string = string.split
  words = Hash.new(0)

  string.each do |string_word|
    dictionary.each do |dictionary_word|
      if string_word.include?(dictionary_word)
        words[dictionary_word] += 1
      end
    end
  end

  return words
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)