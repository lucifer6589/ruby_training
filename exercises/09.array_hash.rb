
input ="['abc','def',1234,234,'abcd','x','mnop',5,'zZzZ']".delete('[]\'').split(',')
p input

class Array 
  def array_hash
    hash = Hash.new{ |h , k | h[k] = [] }
    map do | val |
      key = val.length
      hash[key] << val
    end
    hash
  end
end

p input.array_hash