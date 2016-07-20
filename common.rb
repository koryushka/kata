def lcs(x, y)
  a,b = sort(x),sort(y)
  a,b = (a - (a - b)), (b - (b - a))


  result = []
  loop do
    puts "a: #{a.join}"
    puts "b: #{b.join}"
    if a.first != b.first
      if (b.index(a.first).to_i > a.index(b.first).to_i) && !b.index(a.first).nil? && !a.index(b.first).nil?
        a.shift
      elsif b.index(a.first).to_i < a.index(b.first).to_i && !b.index(a.first).nil? && !a.index(b.first).nil?
        b.shift
      elsif (b.index(a.first).to_i == a.index(b.first).to_i)
        if (a.first != b.first)
          puts 'Situation'
          break
        end
      elsif (a.first != b.first) && (b.index(a.first).nil? || a.index(b.first).nil?)
        a.shift
        b.shift
      end
    else
      b.shift
      result << a.shift
    end
    break if a.empty? || b.empty?
  end
  [a.join, b.join, result.join]
end

def sort(str)
  str.chars
end

a = '132535365'
b = '12356'

a,b,result = lcs(a,b)


puts result
