class Matrix
  def initialize(matrix)
    @matrix = matrix
  end

  def max_submatrix
    combined_row = @matrix.shift

    @matrix.each do |row|
      # We only need to update_max if the current row contains zeros
      update_max(combined_row) if row.any?(&:zero?)
      combined_row = row.map.with_index do |num, index|
        num.zero? ? 0 : combined_row[index] + num
      end
    end

    update_max(combined_row)
  end

  private

  def update_max(combined_row)
    hist = Histogram.new(combined_row)
    @max = [@max || 0, hist.max_area].max
  end
end
