# frozen_string_literal: true

if ARGV[0].nil? || ARGV[0].strip.empty?
  puts 'Please provide an input'
else
  string = ARGV[0]
  puts string.gsub(/[aeiouAEIOU]/, '*')
end