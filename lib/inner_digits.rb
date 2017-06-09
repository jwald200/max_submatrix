class InnerDigits
  attr_reader :collection
  
  def initialize
    @collection = {}
  end
  
  def add(digit)
    (1..digit).each do |inner_digit|
      collection[inner_digit] ||= 0
      collection[inner_digit] += inner_digit
    end
  end
  
  def max
    @collection.values.max
  end
  
  def reset!
    @collection = {}
  end
end