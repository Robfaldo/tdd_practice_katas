require './lib/next_bigger_number_with_same_digits.rb'

# You have to create a function that takes a positive integer number and returns the next bigger number formed by the same digits:
# #
# # 12 ==> 21
# # 513 ==> 531
# # 2017 ==> 2071
# #
# # If no bigger number can be composed using those digits, return -1:
# #
# # 9 ==> -1
# # 111 ==> -1
# # 531 ==> -1

RSpec.describe NextBiggerNumberCalculator do
  describe '#next_bigger' do
    subject(:calculator) { described_class.new }

    context 'when the number has 2 digits' do
      context 'and the second digit is lower than the first' do
        it 'returns the largest integer of those 2 digits' do
          expect(calculator.next_bigger(12)).to eq(21)
        end
      end

      context 'and the second digit is lower than the first' do
        it 'returns -1' do
          expect(calculator.next_bigger(32)).to eq(-1)
        end
      end

      context 'and the second digit is the same as the first' do
        it 'returns -1' do
          expect(calculator.next_bigger(22)).to eq(-1)
        end
      end
    end
  end
end
