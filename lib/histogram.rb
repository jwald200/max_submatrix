class Histogram
  def initialize(arr)
    @histogram = arr
  end

  def max_area
    @histogram.uniq.map do |num|
      sum = max_consecutive(num) * num

      sum
    end.max
  end

  private

  def max_consecutive(target)
    total = 0
    consecutive_sums = []

    @histogram.each do |hist_num|
      if hist_num >= target
        total += 1
      else
        consecutive_sums << total
        total = 0
      end
    end

    consecutive_sums << total
    consecutive_sums.max
  end
end
