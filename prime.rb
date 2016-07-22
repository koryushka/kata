def prime(n)
    (2..n).reject do |i|
      puts "I: #{i}"
      (2...i).any?{|o| i % o == 0}
    end
  end

puts prime 100
