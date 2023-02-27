dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substrings(string, dictionary)
  str_array = string.downcase.gsub(/[^a-z0-9\s]/i, '').split(" ")
  match = Hash.new

  dictionary.each do |word|
    match[word] = str_array.join('').scan(/#{word}/).length
  end

  p match
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
