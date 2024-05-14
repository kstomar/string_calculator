require_relative '../calculator'

describe Calculator do
  describe '#addition' do
    it 'will return zero if the input is empty' do
      expect(Calculator.add('')).to eq(0)
    end

    it 'will return the number itself if input has only one value' do
      expect(Calculator.add('2')).to eq(2)
    end

    it 'will return the sum of two given numbers' do
      expect(Calculator.add('1,2')).to eq(3)
    end

    it 'will handels numbers with a newline character' do
      expect(Calculator.add("1\n2,3")).to eq(6)
    end

    it 'returns sum of given numbers separated by given delimiters' do
      expect(Calculator.add("//;\n1;2")).to eq(3)
    end

    it 'raises the exception if negative numbers are present' do
      expect{ Calculator.add("-1,-2") }.to raise_error('negative numbers not allowed "-1","-2"')
    end
  end
end
