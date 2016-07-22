class Hash
  def method_missing( symbol, *args )
    puts "method #{symbol} is not defined for #{self}"
    s = symbol.to_s
    s.slice!(0)
    s = s.to_sym
    self[s] || self[s.to_s]


  end
end

hash = {'one' => '1', one: 5}
hash._one
puts hash[:two]
