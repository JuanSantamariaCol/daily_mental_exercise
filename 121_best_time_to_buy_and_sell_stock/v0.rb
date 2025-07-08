# @param {Integer[]} prices
# @return {Integer}
# Runtime 65ms (12.18%) Memory: 221.12 MB (69.79%)
def max_profit(prices)
    minor = Float::INFINITY
    maxim = - Float::INFINITY
    max_dif = 0
    prices.each_with_index do |day_price, index|
        if day_price < minor
            minor = day_price
            maxim = day_price
        end 
        maxim =  day_price if day_price > maxim
        max_dif = maxim - minor  if ( maxim - minor ) > max_dif
    end
    max_dif
end

prices = [7,6,4,3,1]
pp max_profit(prices)