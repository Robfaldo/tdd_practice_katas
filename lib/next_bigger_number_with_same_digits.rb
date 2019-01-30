class NextBiggerNumberCalculator
  def next_bigger(num)

    num_to_array = num.to_s.split('')

    if num_to_array.length == 3
      if last_two_numbers_the_same?(num_to_array) && first_digit_lower?(num_to_array)
        return swap_first_and_second_digits(num_to_array)
      end
    end

    reversed_number = num_to_array.sort.reverse.join.to_i
    return -1 if no_bigger_number?(num, reversed_number)

    reversed_number
  end

  private

  def no_bigger_number?(num, reversed_number)
    return true if reversed_number <= num

    false
  end

  def last_two_numbers_the_same?(number_array)
    number_array[-1] == number_array[-2]
  end

  def first_digit_lower?(number_array)
    number_array[0] < number_array[1] && number_array[0] < number_array[2]
  end

  def swap_first_and_second_digits(number_array)
    [number_array[1], number_array[0], number_array[2]].join.to_i
  end
end