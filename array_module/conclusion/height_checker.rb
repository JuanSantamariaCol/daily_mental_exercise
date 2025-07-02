# @param {Integer[]} heights
# @return {Integer}
def height_checker(heights)
    sorted = heights.sort
    res = 0
    heights.each_with_index do  |item, index|
        res += 1 if item != sorted[index]
    end
    res 
end

nums = [1,1,4,2,1,3]
pp height_checker(nums)