# <!-- 
# Convert a number to a string, the contents of which depend on the number's factors.

# - If the number has 3 as a factor, output 'Pling'.
# - If the number has 5 as a factor, output 'Plang'.
# - If the number has 7 as a factor, output 'Plong'.
# - If the number does not have 3, 5, or 7 as a factor,
#   just pass the number's digits straight through.

# ## Examples

# - 28's factors are 1, 2, 4, **7**, 14, 28.
#   - In raindrop-speak, this would be a simple "Plong".
# - 30's factors are 1, 2, **3**, **5**, 6, 10, 15, 30.
#   - In raindrop-speak, this would be a "PlingPlang".
# - 34 has four factors: 1, 2, 17, and 34.
#   - In raindrop-speak, this would be "34". -->

require 'prime'

class Raindrops

  def self.convert(number)

    factors = number.prime_division.flatten.uniq.sort.keep_if { |x| [3,5,7].include?(x) }

    raindrop_speak = ""
    if factors.empty?
      raindrop_speak << number.to_s
    else
      factors.map(&:to_s).each do |factor|
        case factor
        when "3"
          raindrop_speak << "Pling"
        when "5"
          raindrop_speak << "Plang"
        when "7"
          raindrop_speak << "Plong"
        end
      end
    end
    raindrop_speak
  end
end

module BookKeeping
  VERSION = 3
end


#   3) Failure:
# RaindropsTest#test_2_to_the_power_3_does_not_make_a_raindrop_sound_as_3_is_the_exponent_not_the_base [raindrops/raindrops_test.rb:33]:
# Expected: "8"
#   Actual: "Pling"