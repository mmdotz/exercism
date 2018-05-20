
# Determine if a sentence is a pangram. A pangram (Greek: παν γράμμα, pan gramma,
# "every letter") is a sentence using every letter of the alphabet at least once.
# The best known English pangram is:
# > The quick brown fox jumps over the lazy dog.

# The alphabet used consists of ASCII letters `a` to `z`, inclusive, and is case
# insensitive. Input will not contain non-ASCII symbols.



class Pangram

  def self.pangram?(phrase)
    unique_alpha_count = phrase.downcase.gsub(/\s+/, "").gsub(/\d/, "").chars.uniq.count
    unique_alpha_count >= 26
  end

end

module BookKeeping
  VERSION = 6 
end