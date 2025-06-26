# @param {Integer} num
# @return {Integer}
def number_of_steps(num)
  step = 0
  while num != 0
    if num % 2 == 1
      num -=1
      step +=1
    else
      num = num / 2
      step +=1
    end
  end
  step
end

pp number_of_steps(14) # 6