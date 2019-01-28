class NextBiggerNumberCalculator
  def initialise

  end

  def next_bigger(num)
    num.to_s.split('').sort.reverse.join.to_i
  end
end