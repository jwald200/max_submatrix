class Matrix
  def initialize(matrix)
    @matrix = matrix
  end

  def max_submatrix
    dynamic_row = Array.new(@matrix.first.size, 0)
    inner_digits = InnerDigits.new

    @matrix.each do |row|
      row.each_with_index do |num, index|
        dynamic_row[index] = num.zero? ? 0 : dynamic_row[index] + num
        inner_digits.add dynamic_row[index]
      end

      update_max(inner_digits.max)
      inner_digits.reset!
    end

    @max
  end

  private

  def update_max(num)
    @max = [(@max || 0), (num || 0)].max
  end
end
