# frozen_string_literal: true

def reverse_sentence(sentence)
  words = sentence.split
  reversed_words = words.reverse
  reversed_words.join(' ')
end

sentence = ARGV[0]

if sentence.nil? || sentence.strip.empty?
  puts 'Please provide an input'
else
  p reverse_sentence(sentence.strip)
end