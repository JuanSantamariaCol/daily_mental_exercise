# @param {Integer[]} fruits
# @param {Integer[]} baskets
# @return {Integer}
def num_of_unplaced_fruits(fruits, baskets)
    unplaced = 0
    fruits.each_with_index do |fruit, i|
        i2 = 0 
        while baskets[i2] < fruit
            break if baskets.size == 1
            i2 += 1
        end

        pp "Result: f: #{fruit } b:#{baskets[i2]} "
        pp "#{baskets}"

        unless baskets[i2].nil?
            unplaced += baskets[i2] - fruit 
            baskets.delete_at(i2)
        else
            unplaced += fruit
        end

        pp "................................."
    end
    unplaced
end

fruits = [3,6,1] #[4,2,5] # 2, 4, 5
baskets = [6,4,7] #[3,5,4] # 3, 4, 5
pp num_of_unplaced_fruits(fruits,baskets)

