module BookKeeping
  VERSION = 3
end

# Calculate the Hamming difference between two DNA strands.
class Hamming
  def self.compute(arg1, arg2)
    # The Hamming distance is only defined for sequences of equal length.
    return unless arg1.length.eql?(arg2.length)
    count = 0
    return count if arg1.eql?(arg2)
  
    array1 = arg1.chars
    array2 = arg2.chars
      
    array1.length.times do |x|
      if array1[x] != array2[x]
        count+=1
      end
    end
    count
  end
end


Hamming.compute('GAGCCTACTAACGGGAT','CATCGTAATGACGGCC')
Hamming.compute('GAGCCTACTAACGGGAT','GAGCCTACTAACGGGAT')
Hamming.compute('GAGAT','CATCT')
Hamming.compute('G','T')
Hamming.compute('AAA', 'AAG')
Hamming.compute('GGACGGATTCTG', 'AGGACGGATTCT')


