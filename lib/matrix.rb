class Matrix
  def initialize(matrix)
    @matrix = matrix
  end

  def max_submatrix
    dynamic_row = Array.new(@matrix.first.size, 0)
    inner_digits = InnerDigits.new

    @matrix.each do |row|
      row.each_with_index do |num, index|
        if num.zero?
          dynamic_row[index] = num
          update_max(inner_digits.max)
          inner_digits.reset!
        else
          dynamic_row[index] += num
          inner_digits.add dynamic_row[index]
        end
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
