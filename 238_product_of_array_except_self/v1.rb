# @param {Integer[]} nums
# @return {Integer[]}
# Runtime 34 ms 54.42%
# Memory 223.64 mb 93.49%
# Violates the no-division restriction
def product_except_self(nums)
    zero_counter = nums.count(0)

    return [0] * nums.size if zero_counter > 1
    
    accum_without_zero = nums.reduce(1) { | acum, number | number != 0 ?  (acum * number) : acum }


    nums.each_with_index do |number, i|
        if zero_counter == 1 
            if number == 0
                nums[i] = accum_without_zero
            else
                nums[i] = accum_without_zero * 0
            end
        else
            nums[i] = accum_without_zero / number 
        end
    end
    nums
end


cases = [[1,2,3,4],[-1,1,0,-3,3]]
cases.each do |single|
    pp product_except_self(single)
end
