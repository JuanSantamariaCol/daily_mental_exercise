def number_of_steps (num)
  return 0 unless num > 0

  bin = num.to_s(2)

  steps = bin.length - 1
  steps += bin.count('1')

  steps
end
