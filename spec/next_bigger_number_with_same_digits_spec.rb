require './lib/next_bigger_number_with_same_digits.rb'

RSpec.describe NextBiggerNumberCalculator do

  shared_examples 'a correctly functioning calculator' do |input, expected_output|
    subject(:calculator) { described_class.new }

    it 'calculates the correct scores' do
      expect(calculator.next_bigger(input)).to eq(expected_output)
    end
  end

  describe '#next_bigger' do
    context 'when the number has 2 digits' do
      it_behaves_like 'a correctly functioning calculator', 12, 21
      it_behaves_like 'a correctly functioning calculator', 32, -1
      it_behaves_like 'a correctly functioning calculator', 22, -1
    end

    context 'when the number has 3 digits' do
      it_behaves_like 'a correctly functioning calculator', 111, -1
      it_behaves_like 'a correctly functioning calculator', 101, 110
      it_behaves_like 'a correctly functioning calculator', 110, -1
      it_behaves_like 'a correctly functioning calculator', 210, -1
      it_behaves_like 'a correctly functioning calculator', 311, -1
      it_behaves_like 'a correctly functioning calculator', 244, 424
    end

    context 'when the number has 4 digits' do
      it_behaves_like 'a correctly functioning calculator', 2017, 2071
      it_behaves_like 'a correctly functioning calculator', 2100, -1
      it_behaves_like 'a correctly functioning calculator', 1233, 1323
      it_behaves_like 'a correctly functioning calculator', 1001, 1010
    end
  end
end

