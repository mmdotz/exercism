# Difference Of Squares

# Find the difference between the square of the sum and the sum of the squares of the first N natural numbers.

# The square of the sum of the first ten natural numbers is
# (1 + 2 + ... + 10)² = 55² = 3025.

# The sum of the squares of the first ten natural numbers is
# 1² + 2² + ... + 10² = 385.

# Hence the difference between the square of the sum of the first
# ten natural numbers and the sum of the squares of the first ten
# natural numbers is 3025 - 385 = 2640.



class Squares

	def initialize(n)
		@n = n
	end

	def square_of_sum
		(1..@n).inject(:+)**2
	end

	def sum_of_squares
		(1..@n).map { |x| x**2 }.inject(:+)
	end

	def difference
		square_of_sum - sum_of_squares
	end
end

module BookKeeping
  VERSION = 4
end


