def removNb(n)
  start = Time.now
  array = (1..n).to_a
  sum = array.inject(:+)
  result = []
  # array.combination(2).group_by{|x| x[0]}.each do |k, values|
    # next if  x[0]*x[1] > (sum - (x[0] + x[1]))
    #  puts  "PRODUCT: #{x[0]*x[1] }"
    #  puts  "REST: #{(sum - (x[0] + x[1]))}"
    #  puts "----------------------------------------"
    # result << x << x.reverse if x[0]*x[1] == sum - (x[0] + x[1])
    # values.each do |value|
    #   if k*value[1] > (sum - (k+value[1]))
    #     break
    #   end
    #   result << value << value.reverse if k*value[1] == sum - (k + value[1])
    #   # puts "k: #{k}"
    # end





  # end
  array.combination(2).each_with_index do |x, i|
      p x
      if x[0]*x[1] == (sum - (x[0] + x[1]))

        result << x << x.reverse
      end
      break if  x[0]*x[1] - i > (sum - (x[0] + x[1]))

  end

  finish = Time.now
  puts "TIME: #{finish - start}"
  puts "result: #{result}"
end

removNb(26)

#
# result = array.combination(2).map do |x|
#   # puts "#{x} ---- #{x.inject(:*) == array.reject{|i| x.include?(i)}.inject(:+) }"
#   if x.inject(:*) == sum - x.inject(:+)
#     [x, x.reverse]
#   end
# end
