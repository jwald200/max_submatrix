RSpec.describe Histogram do
  describe '#max_area' do
    example 'increasing values' do
      hist = Histogram.new([4, 5, 6])

      expect(hist.max_area).to eq(12)
    end

    example 'with decreasing values' do
      hist = Histogram.new([2, 1, 4, 5, 4])

      expect(hist.max_area).to eq(12)
    end
  end
end
