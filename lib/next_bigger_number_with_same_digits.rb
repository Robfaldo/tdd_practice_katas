class NextBiggerNumberCalculator
  def next_bigger(num)
    numbers = num.to_s.split('')
    current_index = numbers.length - 1

    numbers.length.times do
      return -1 if last_number(current_index)

      if numbers[current_index] > numbers[current_index - 1]
        final_numbers = swap_numbers(numbers, current_index)

        return final_numbers.join.to_i
      end

      current_index -= 1
    end
  end

  private

  def swap_numbers(numbers, current_index)
    first_number = numbers[current_index - 1]
    second_number = numbers[current_index]

    numbers[current_index] = first_number
    numbers[current_index - 1] = second_number

    return numbers
  end

  def last_number(current_index)
    current_index == 0
  end
end