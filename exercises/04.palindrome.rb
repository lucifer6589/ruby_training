class String 
  def palindrome?
    self == reverse
  end
end
input = "aaa"
if input.palindrome?
  puts "palindrome"
else
  puts "not a palindrome" 
end
