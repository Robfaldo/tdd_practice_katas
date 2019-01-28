class NextBiggerNumberCalculator
  def next_bigger(num)
    reversed_number = num.to_s.split('').sort.reverse.join.to_i
    return -1 if no_bigger_number?(num, reversed_number)

    reversed_number
  end

  private

  def no_bigger_number?(num, reversed_number)
    return true if reversed_number <= num

    false
  end
end