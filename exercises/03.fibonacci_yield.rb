# frozen_string_literal: true

class Integer
    def fibonacci
    second_last = 1
    last = 1
    while second_last <= self
      yield second_last if block_given?
      current = second_last + last
      second_last = last
      last = current
    end
  end
end
5.fibonacci do |num|
  print "#{num} "
end
# if i dont give block to fibonacci , it will print nothing.











# # Fibonacci : prints fibonacci series upto a value 
# class Fibonacci
#   def fibonacci(max_value)
#     second_last = 1
#     last = 1
#     while(second_last <= max_value)
#       yield second_last if block_given?
#       current = second_last + last
#       second_last = last
#       last = current
#     end
#   end
# end
# fibonacci = Fibonacci.new 
# fibonacci.fibonacci(10) do |val|
#   puts val
# end