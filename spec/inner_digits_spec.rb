RSpec.describe InnerDigits do
  let(:inner_digits) { InnerDigits.new }
  
  describe '#collection' do
    it 'returns a hash' do
      expect(inner_digits.collection).to eq({})
    end
  end
  
  describe '#add' do
    it 'adds all inner digits of n to collection' do
      inner_digits.add(3)
      
      expect(inner_digits.collection).to eq({1 => 1, 2 => 2, 3 => 3})
    end
  end
  
  describe '#max' do
    it 'returns the max of frequency' do
      inner_digits.add(3)
      inner_digits.add(5)
      
      expect(inner_digits.max).to eq(6)
    end
  end
  
  describe '#reset!' do
    it 'clears the collection' do
      inner_digits.add(5)
      inner_digits.reset!
      expect(inner_digits.collection).to be_empty
    end
  end
end