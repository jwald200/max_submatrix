class InnerDigits
  attr_reader :collection, :max

  def initialize
    @collection = {}
  end

  def add(digit)
    collection.reject! { |key, _| key > digit } if (@last_digit || 0) > digit

    (1..digit).each do |inner_digit|
      collection[inner_digit] ||= 0
      collection[inner_digit] += inner_digit

      update_max(collection[inner_digit])
      @last_digit = inner_digit
    end
  end

  def update_max(num)
    @max = [@max || 0, num].max
  end

  def reset!
    @collection = {}
  end
end
