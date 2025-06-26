# @param {String} magazine
# @return {Boolean}
# BEST RUNTIME
# .all? is an enumeration method that returns true if all iterations return true.
# Uniq quita los duplicados

def can_construct(ransom_note, magazine)
  ransom_note.chars.uniq.all? do |char|
    ransom_note.count(char) <= magazine.count(char)
  end
end
