# @param {Integer[]} prices
# @return {Integer}
# Runtime 45ms (77.28%) Memory: 221.12 MB (69.79%)
def max_profit(prices)
    minor = Float::INFINITY
    max_dif = 0
    prices.each do |day_price|
        minor = [day_price, minor].min
        max_dif = [max_dif, day_price  -  minor].max
    end
    max_dif
end

prices = [7,1,5,3,6,4]
pp max_profit(prices)