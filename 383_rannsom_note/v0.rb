# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
# Runtime 62 ms 66.52%
# Memory 212.03 mb 88.99%
# Complexity O(N+M)
def can_construct(ransom_note, magazine)
  hash_maga = {}
  magazine.each_char do |letter|
    hash_maga[letter] ||= magazine.count(letter)
  end

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

pp can_construct("aa", "aab")