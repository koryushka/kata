def pascal(depth)
  stack = []
  1.upto depth do |i|
    array = Array.new(i)
    array[0],array[-1] = 1,1
    stack << array
    if i > 2
      array.each_index do |index|
        if index > 0 && index < array.length-1
          array[index] = stack[i-2][index-1].to_i + stack[i-2][index].to_i
        end
      end

    end

    puts "stack: #{stack}"
    # puts "Array-#{i}: #{array}"
  end
  stack
end

 pascal(1)
