# @param {String} magazine
# @return {Boolean}
# Runtime 51 ms 77.97 %
# Memory 216.44 mb  46.26%
# Complexity O(N+M)
def can_construct(ransom_note, magazine)
  hash_maga = magazine.chars.tally

  ransom_note.each_char do |letter|
    if hash_maga.has_key? letter
      hash_maga[letter] -=1
      return false if hash_maga[letter] < 0
    else
      return false
    end
  end
  true
end
