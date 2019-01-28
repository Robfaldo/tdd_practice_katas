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
    context 'when the number has 2 digits' do
      it 'returns the largest integer of those 2 digits' do
        calculator = NextBiggerNumberCalculator.new
        answer = calculator.next_bigger(12)
        expect(answer).to eq(21)
      end
    end
  end
end