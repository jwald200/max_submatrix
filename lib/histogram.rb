class Histogram
  def initialize(arr)
    @histogram = arr
  end

  def max_area
    @histogram.uniq.map do |num|
      max_consecutive(num) * num
    end.max
  end

  private

  def max_consecutive(target)
    consecutive_sums = [0]

    @histogram.each do |hist_num|
      if hist_num >= target
        consecutive_sums[-1] += 1
      else
        consecutive_sums << 0
      end
    end

    consecutive_sums.max
  end
end
