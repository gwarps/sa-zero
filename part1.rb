#For those just starting out, one suggested way to work on your code is to have a command window open and a text editor with this
#file loaded.  Make changes to this file and then run 'ruby part1.rb' at the command line, this will run your program.  Once you're
#satisfied with your work, save your file and upload it to the checker.


def palindrome?(str)
  temp = str.split(/[^a-zA-Z]/).join.downcase
  return temp == temp.reverse
end

def count_words(str)
  # YOUR CODE HERE
  words = str.downcase.split(/[^a-zA-Z]/).join(" ").split
  hash = Hash.new

  words.each do |word|
   if hash[word].nil?
    hash[word] = 1
   else
    hash[word] = hash[word] + 1
   end
  end

  return hash
end


#the code below this line will test your functions.  You should remove everything below this line prior to submitting your file


test_str = "there goes the neighborhood"

if palindrome? test_str
  puts test_str +  " is a palindrome!"
else
  puts test_str +  " is NOT a palindrome!"
end


test_str = "Madam, I'm Adam"

if palindrome? test_str
  puts test_str + " is a palindrome!"
else
  puts test_str " is NOT a palindrome!"
end


test_str = "The rent is due on the first day of the month unless the first day of the month falls on a Saturday or Sunday"

word_count = count_words test_str
puts word_count
