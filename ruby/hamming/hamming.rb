class Hamming

  def self.compute(arg1, arg2)
    #count of characters that differ at same index
    #string inside array?
    #

    if arg1.eql?(arg2)
      0
    else
      array1 = arg1.split('')
      array2 = arg2.split('')
      array1.length.times do |x|
        if array1[x] != array2[x]
         1
        end
      end
    end
  end

end
