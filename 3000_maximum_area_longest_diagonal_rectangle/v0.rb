# @param {Integer[][]} dimensions
# @return {Integer}
def area_of_max_diagonal(dimensions)
    results = {}
    dimensions.each do |x,y|
        length = Math.sqrt(x * x + y * y)
        results[length] = 0 unless results.has_key? length
        results[length ] += 1 
    end
    pp results
    if results.keys.size > 1 
        results.keys.max
    end
end

dimensions = [[2,5],[7,4],[5,3],[2,4],[3,10],[3,5],[4,5],[4,4],[6,5]]
area_of_max_diagonal(dimensions)