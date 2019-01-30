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

    context 'when the number has 3 digits' do
      context 'when all digits are the same' do
        it 'calculates the correct score' do
          expect(calculator.next_bigger(111)).to eq(-1)
        end
      end

      context 'when the last digit is higher than the second' do
        it 'calculates the correct score' do
          expect(calculator.next_bigger(101)).to eq(110)
        end
      end

      context 'when the last digit is lower than the second' do
        context 'and the second is same as first' do
          it 'caclulates the correct score' do
            expect(calculator.next_bigger(110)).to eq(-1)
          end
        end
        context 'and the second is lower than the first' do
          it 'caclulates the correct score' do
            expect(calculator.next_bigger(210)).to eq(-1)
          end
        end
      end

      context 'when the last digit is the same as the second' do
        context 'and the first is higher' do
          it 'caclulates the correct score' do
            expect(calculator.next_bigger(311)).to eq(-1)
          end
        end
        context 'and the first is lower' do
          it 'caclulates the correct score' do
            expect(calculator.next_bigger(244)).to eq(424)
          end
        end
      end
    end
  end
end


# 3 digits
# 101 - if the last digit is higher than the last -1 then swap them
# 110 - if the last digit is lower than the last -1, and the last -1 is the same as the first then return -1
# 210 - *************************************************************************** OR higher as the first then return -1
#
#
# 111 - if the last digit is the same as the last -1 and the first then return -1 - DOING THIS ONE
# 311 - if the last digit is the same as the last -1 and the first is higher then return -1
# 244 - if the last digit is the same as the last -1 and the first is lower then swap the second and first digits - DOING THIS ONE

# 123
# 192
# 191
# 291
# 199
# 991
# 921
# 999
#