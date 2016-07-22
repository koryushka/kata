def matrix_mult(a, b)
  # result = []
  # a.each_index do |i|
  #   0.upto(a[i].length - 1) do |y|
  #     a[i].each_index do |x|
  #       puts "i = #{i}"
  #       puts "x = #{x}"
  #       puts "y = #{y}"
  #       puts "A: #{a[i][x]}"
  #       puts "B: #{b[x][y]}"
  #       puts "--------------------------"
  #       puts "result: #{a[i][x] * b[x][y]}"
  #       if result[i]
  #         result[i] << (a[i][x] * b[x][y])
  #       else
  #         result[i] = [a[i][x] * b[x][y]]
  #       end
  #       puts "result[i] = #{result[i]}"
  #     end
  #   end
  # end
  #
  #
  #
  # result.map! { |r| r.each_slice(a.first.length).to_a.map {|i| i.inject(:+)}}
  #
  #
  #   puts "FINAL #{result}"
  puts "A: #{a}"
  puts "B: #{b}"
  a.map do |row|
    b.transpose.map do |col|
      puts "After b.transpose"
      puts "A: #{a}"
      puts "B: #{col}"
      row.zip(col).map { |i,j| i*j }.inject(:+)
    end
  end
end
# matrix_mult [[1, 2], [3, 2]], [[3, 2], [1, 1]]
 matrix_mult([[1, 2,1], [3, 2,1],[3, 2,1]], [[5, 6,7], [8, 9,10], [11,12,13]])
