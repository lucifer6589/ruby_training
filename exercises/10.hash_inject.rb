
input ="['abc','def',1234,234,'abcd','x','mnop',5,'zZzZ']".delete('[]\'').split(',')
p input


class Array
  def array_hash
    hash_array = Hash.new{ |hash, key| hash[key] = [] }
    each do |val|
      key = val.length
      hash_array[key] << val
    end
    hash_array
  end
end

class Hash
    def odd_even_hash
    hash_odd_even = Hash.new { |hash, key| hash[key] = [] }
    inject(hash_odd_even) do |result, (length, group)|
      if length.odd?
        result['odd'] << group
      else
        result['even'] << group
      end
      result
    end
  end
end

p hash_array = input.array_hash
p result = hash_array.odd_even_hash



# class Array 
#   def array_hash
#     hash_array = Hash.new{ |h , k | h[k] = [] }
#     each do | val |
#       key = val.length
#       hash_array[key] << val
#     end
#     hash_array
#   end
#   def hash_inject 
#     odd_arr =[]
#     even_arr = []
#     each do |arr|
#       key = arr[0]
#       if key.even? 
#         even_arr << arr[1]
#       else 
#         odd_arr << arr[1]
#       end
#     end
#     [even_arr , odd_arr]
#   end
# end

# hashed_array = input.array_hash.sort_by { |key , val | val }
# p hashed_array

# odd_arr , even_arr = hashed_array.hash_inject
# p odd_arr
# p even_arr



