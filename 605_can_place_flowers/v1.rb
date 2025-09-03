# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)
  items = flowerbed.count
  flowerbed.each_with_index do |i, index|
    next if i == 1
    break if n <= 0

    if index.zero?
      if flowerbed[index + 1] != 1
        n -= 1
        flowerbed[index] = 1
      end
    elsif index == (items - 1)
      if flowerbed[index - 1] != 1
        n -= 1
        flowerbed[index] = 1
      end
    else
      if (flowerbed[index - 1] != 1) && (flowerbed[index + 1] != 1)
        n -= 1
        flowerbed[index] = 1
      end
    end

  end
  n <= 0
end


pp can_place_flowers([1,0,0,0,0,1],2)