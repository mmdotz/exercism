# Calculate the Hamming difference between two DNA strands.
class Hamming

  VERSION = 1

  def self.compute(arg1, arg2)
    raise ArgumentError unless arg1.length.eql?(arg2.length)
    count = 0
    return count if arg1.eql?(arg2)
      
    arg1.length.times do |x|
      count+=1 unless arg1[x].eql?(arg2[x])
    end
    count
  end
end