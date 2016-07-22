def lcs(x, y)
  a,b = x.chars, y.chars
  a,b = (a - (a - b)), (b - (b - a))
  result = []
  loop do
    if a.first != b.first
      if (b.index(a.first).to_i > a.index(b.first).to_i) && !b.index(a.first).nil? && !a.index(b.first).nil?
        a.shift
      elsif b.index(a.first).to_i < a.index(b.first).to_i && !b.index(a.first).nil? && !a.index(b.first).nil?
        b.shift
      elsif (b.index(a.first).to_i == a.index(b.first).to_i) && (a.first != b.first)
          a.length > b.length ? a.shift : b.shift
      elsif (a.first != b.first) && (b.index(a.first).nil? || a.index(b.first).nil?) && (a.length != 1 && b.length != 1)
        a.shift
        b.shift
      elsif (a.length == 1) && b.join.include?(a.join)
        result << a.shift
      elsif (b.length == 1) && a.join.include?(b.join)
        result << b.shift
      end
    elsif a.first == b.first
      b.shift
      result << a.shift
    end
    break if a.empty? || b.empty?
  end
  result.join
end

def sort(str)

end

a = '132535365'
b = '12356'

a,b,result = lcs(a,b)


puts "result: #{result}"
