# @param {String} word1
# @param {String} word2
# @return {String}
# Runtime 40 ms (Beats 100%), Memory 211.39 MB (Beats 93.12%)
def merge_alternately(word1, word2)
    result = []
    #podemos hace refactor aqui hacerlo con un map? 
    [word1.length, word2.length].max().times do |index|
        result << word1[index] if index < word1.length
        result << word2[index] if index < word2.length
    end
    result.join()
end

def merge_alternately(word1, word2) = Array.new([word1.length, word2.length].max).zip(word1.chars, word2.chars).flatten.join