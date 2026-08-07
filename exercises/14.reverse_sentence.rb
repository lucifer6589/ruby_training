#Use string methods to reverse the words arrangement in a sentence.
#Eg: "An apple a day keeps the doctor away" -> "away doctor the keeps day a apple An"
def reverse_sentence(sentence)
  words = sentence.split
  reversed_words = words.reverse
  reversed_words.join(" ")
end

sentence = ARGV[0]

if sentence.nil? || sentence.strip.empty?
  puts "Please provide an input"
else 
  p reverse_sentence(sentence.strip)
end



