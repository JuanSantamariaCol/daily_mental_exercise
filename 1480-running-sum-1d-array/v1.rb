def running_sum(nums)
  new = []
  nums.each_with_index do |number, index|
    sum = 0
    nums.each_with_index do |second, second_index|
      if index.zero?
        sum = number
        break
      end
      break if index + 1 == second_index

      sum += second
    end
    new << sum
  end
  new
end

nums = [1,2,3,4]
pp running_sum(nums)
