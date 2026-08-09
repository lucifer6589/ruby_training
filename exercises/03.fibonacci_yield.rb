# frozen_string_literal: true

def fibonacci(num)
  second_last = 1
  last = 1
  while second_last <= num
    yield second_last
    current = second_last+last
    second_last=last
    last= current
  end
end
if ARGV[0].nil? || ARGV[0].strip.empty?
  puts 'Please provide an input'
else
  max_num = ARGV[0].to_i
  fibonacci(max_num) do |value|
    print "#{value} "
  end
end