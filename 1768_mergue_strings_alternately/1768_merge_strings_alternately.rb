#Runtime 54 ms (Beats 82.91%), Memory 211.40 MB (Beats 93.97%)
def merge_alternately(word1, word2)
    max = [word1.count, word2.count].max()
    result = []
    max.times do |index|
        result << word1[index] if index <= word1.count
        resilt << word2[index] if index <= word2.count
    end
    result.join()
end