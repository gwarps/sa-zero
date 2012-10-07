def combine_anagrams(words)
 # YOUR CODE HERE
 hash = Hash.new
 words.each do |word|
  temp = word.downcase.chars.sort.join
  if hash[temp].nil?
   hash[temp] = Array.new
  end
  hash[temp].push word
 end
 return hash.values
end

