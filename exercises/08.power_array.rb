# frozen_string_literal: true

class Array
  def power(exponent)
    map do |val|
      val.to_i ** exponent
    end
  end
end

arr = "[1,2,3,4,5]"

p result = arr.delete('[]').split(',')
p result.class
p result.power(2)



# require 'json'

# def power(array, exponent)
#   power_array = array.map do |num|
#     num ** exponent
#   end
#   power_array
# end
# if ARGV.empty? || ARGV[0].strip.empty?
#   puts 'Please provide an input'
# else
#   array = JSON.parse(ARGV[0])
#   raised_to_power = ARGV[1].to_i
#   p power(array, raised_to_power)
# end

#here json is used to convert the argv string into array 
#we could have used enum also, but that is dangerous as it evaluates ruby code. "1+2" = 3 , in some case ofcourse that may be dangerous 
