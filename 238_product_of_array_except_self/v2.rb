# @param {Integer[]} nums
# @return {Integer[]}
# Runtime 27 ms 87.85%
# Memory 225.66 mb 68.69%
# Violates the no-division restriction
def product_except_self(nums)

    num_elements = nums.size 
    ans = [0] * num_elements
    
    left_acum = 1 
    for i in (0..(num_elements - 1))
        ans[i] = left_acum
        left_acum *= nums[i]
    end

    right_acum = 1
    for i in (num_elements - 1).downto(0)
        ans[i] *= right_acum
        right_acum *= nums[i]
    end

    ans
end


cases = [[1,2,3,4],[-1,1,0,-3,3]]
cases.each do |single|
    pp product_except_self(single)
end