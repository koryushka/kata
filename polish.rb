def calc(str)
  stack = []
  str.split(' ').each do |el|
    puts "Element: #{el}"
    puts "Stack: #{stack}"
    if el =~ /\d/
      stack.push el
    else
      stack[-1] = eval("stack[-2].to_f#{el}stack[-1].to_f")
      stack.delete_at(-2)
    end
  end
  stack[-1].to_f
end

puts calc(" 5 1 2 + 4 * + 3 -  ")
