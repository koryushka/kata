words=['cherry', 'peach', 'pineapple', 'melon', 'strawberry', 'raspberry', 'apple', 'coconut', 'banana']

class Dictionary
  def initialize(words)
    @words=words
  end
  def find_most_similar(term)
    h = {}
    res = @words.map do |word|
      w = (res(word) & res(term)).max{|s| s.length}
      percent = w.length.to_f/word.length.to_f if !w.nil?
     h[word.to_sym] = w
     puts "Percentage(#{word} - #{term}): #{(percent)*100}%" if percent
     [word, percent]
    end
    # h.key(h.values.compact.max_by {|s| s.length})
    res.delete_if{|s| s[1].nil?}
    puts res.max_by{|s| s[1]}[0]



  end

  def res(term)
    ((1..term.length).map { |i| term.chars.combination(i).map(&:join) }.flatten ).uniq #+ term.chars.permutation.map(&:join)
  end
end

test_dict=Dictionary.new(words)

test_dict.find_most_similar('herry')
