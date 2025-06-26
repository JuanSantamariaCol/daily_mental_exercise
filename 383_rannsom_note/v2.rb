# @param {String} magazine
# @return {Boolean}
# Runtime 27 ms 77.97 %
# Memory 216.44 mb 46.26%
# Coplexity O(N)
# Se busca reducir meganize por cada letra utilizada hasta que sea '' y esto se toma como false
def can_construct(ransom_note, magazine)
  ransom_note.each_char do |letter|
    return false unless magazine.sub!(letter, '')
  end
  true
end
