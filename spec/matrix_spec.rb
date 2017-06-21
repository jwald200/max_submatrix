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

    example 'large matrix' do
      arr = [
              [1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1],
              [1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
              [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
              [0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1],
              [1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1],
              [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
              [1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1],
              [1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 0],
              [1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 1],
              [1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1],
              [1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
              [1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
              [1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1],
              [1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1],
              [1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1]
            ]

      matrix = Matrix.new(arr)
      expect(matrix.max_submatrix).to eq(30)
    end

    example '4 x 3' do
      arr = [[0,0,0,1],
            [1,1,1,1],
            [0,0,0,1]]

      matrix = Matrix.new(arr)
      expect(matrix.max_submatrix).to eq(4)
    end

    example '1s between' do
      arr = [[0,0,0], [1,1,1], [0,0,0]]

      matrix = Matrix.new(arr)
      expect(matrix.max_submatrix).to eq(3)
    end

    example 'only 1 row' do
      arr = [[0, 1, 1]]

      matrix = Matrix.new(arr)
      expect(matrix.max_submatrix).to eq(2)
    end
  end
end
