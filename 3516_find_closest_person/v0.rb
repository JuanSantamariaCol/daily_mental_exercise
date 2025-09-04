# @param {Integer} x
# @param {Integer} y
# @param {Integer} z
# @return {Integer}

# Runtime 0ms 100% 
# Memory 211.46 33.33%
# Complexity O(1)
def find_closest(x, y, z)
    if (x - z).abs < (y - z).abs
        return 1
    elsif (y - z).abs < (x - z).abs
        return 2
    else
        return 0 
    end
end

pp find_closest(2,7,4)
