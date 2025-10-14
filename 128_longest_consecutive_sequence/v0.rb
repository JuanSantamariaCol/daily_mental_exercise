# @param {Integer[]} nums
# @return {Integer}
# ERROR: TLE
def longest_consecutive(nums)
    need_numbers = {}
    max_size = 0

    nums.each do |number|
        # pp "-"*40
        # pp "Number: #{number}"
        new_arr = [number]

        unless need_numbers.has_key? number.to_s 
            need_numbers[number.to_s] = new_arr
        end
        
        find_numbers = [number-1 , number+1]

        find_numbers.each do |to_find|
            if need_numbers.has_key? to_find.to_s
                new_arr = (new_arr + need_numbers[to_find.to_s]).uniq
                need_numbers[to_find.to_s] = new_arr
            end
            # pp "Arr Building: #{new_arr}"
        end

        new_arr.each do |item|
            need_numbers[item.to_s] = new_arr
        end

        # pp "Final to save:#{new_arr}"
        max_size = new_arr.size if new_arr.size > max_size

        # pp "memory: #{need_numbers}"
    end
    max_size
end

cases = [[100,4,200,1,3,2]]

cases.each do |single_case|
    pp "#{"_"*10} new Case #{"_"*10}"
    pp longest_consecutive(single_case)
end