RSpec.describe Matrix do
  describe '#max_submatrix' do
    example '3 * 3 matrix' do
      two_d_array = [
        [1, 1, 1],
        [0, 1, 1],
        [1, 0, 0]
      ]

      matrix = Matrix.new(two_d_array)

      expect(matrix.max_submatrix).to eq(4)
    end
  end
end
