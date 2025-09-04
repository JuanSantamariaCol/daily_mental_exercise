# @param {Integer} x
# @param {Integer} y
# @param {Integer} z
# @return {Integer}

# Runtime 0ms 100% 
# Memory 211.38 100%
# Complexity O(1)
def find_closest(x, y, z)
    dis_x = (z - x).abs
    dis_y = (z - y).abs

    return 0 if dis_x == dis_y
    return 1 if dis_x < dis_y
    2
end

pp find_closest(2,7,4)
