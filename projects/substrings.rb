def count_substrings(string, dictionary)
  result = Hash.new(0)

  dictionary.each do |word|
    matches = string.downcase.scan(word.downcase)
    result[word] += matches.size unless matches.empty?
  end

  result
end


dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
string = "Howdy partner, sit down! How's it going?"
puts count_substrings(string, dictionary)