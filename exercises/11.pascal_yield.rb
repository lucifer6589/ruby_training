

rows = 1

class Integer
  def pascal
    current_row = [1]
    times do 
      yield current_row if block_given?
      next_row =[1]
      (0...(current_row.length - 1)).each do |index|
        next_row << current_row[index] + current_row[index+1]
      end
      next_row << 1
      current_row = next_row
    end
  end
end

rows.pascal do |arr|
  puts arr.join(' ') +' '
end




