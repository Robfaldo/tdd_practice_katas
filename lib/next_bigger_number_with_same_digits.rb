class NextBiggerNumberCalculator
  def next_bigger(num)

    num_to_array = num.to_s.split('')

    # create index starting at the last number
    current_index = num_to_array.length - 1
    # go through each item of the array
    num_to_array.length.times do
      # if it's the last number then return -1
      return -1 if current_index == 0

      # else if the num is bigger than the num before then switch the numbers
      if num_to_array[current_index] > num_to_array[current_index - 1]
        first_number = num_to_array[current_index - 1]
        second_number = num_to_array[current_index]

        # swap the numbers
        num_to_array[current_index] = first_number
        num_to_array[current_index - 1] = second_number

        # return the result
        return num_to_array.join.to_i
      end

      current_index = current_index - 1
    end
  end
end