# frozen_string_literal: true

LETTER_CONSTANT = /[a-zA-Z]/
class Occurence
  def count(string)
    hash = Hash.new(0)
    string.each_char do |character|
      if character =~ LETTER_CONSTANT
        hash[character] += 1
      end
    end
    hash
  end
end
occurence = Occurence.new
p occurence.count("hello124@$")