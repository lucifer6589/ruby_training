# frozen_string_literal: true
VOWEL = /[aeiou]/i
class String
  def replace_vowel
    self.gsub(VOWEL , "*")
  end
end

p "abcd1234aeiohkl".replace_vowel

# class ReplaceVowel
#   VOWEL = /[aeiou]/i
#   def replace(string)
#     string.gsub(VOWEL, "*")
#   end
# end
# replace = ReplaceVowel.new
# puts replace.replace("hello")