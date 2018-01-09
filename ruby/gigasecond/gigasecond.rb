# Calculate the moment when someone has lived for 10^9 seconds.
# A gigasecond is 10^9 (1,000,000,000) seconds.

class Gigasecond

  GIGASECOND = 1000000000
  
  def self.from(birth_time)
    Time.at(birth_time + GIGASECOND).utc
  end
end

module BookKeeping
  VERSION = 6
end