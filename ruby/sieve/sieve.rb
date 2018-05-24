# Use the Sieve of Eratosthenes to find all the primes from 2 up to a given
# number.

# The Sieve of Eratosthenes is a simple, ancient algorithm for finding all
# prime numbers up to any given limit. It does so by iteratively marking as
# composite (i.e. not prime) the multiples of each prime,
# starting with the multiples of 2.

# Create your range, starting at two and continuing up to and including the given limit. (i.e. [2, limit])

# The algorithm consists of repeating the following over and over:

# - take the next available unmarked number in your list (it is prime)
# - mark all the multiples of that number (they are not prime)

# Repeat until you have processed each number in your range.

# When the algorithm terminates, all the numbers in the list that have not
# # been marked are prime.

# Create a list of consecutive integers from 2 through n: (2, 3, 4, ..., n).
# Initially, let p equal 2, the smallest prime number.
# Enumerate the multiples of p by counting to n from 2p in increments of p, and mark them in the list (these will be 2p, 3p, 4p, ...; the p itself should not be marked).
# Find the first number greater than p in the list that is not marked. If there was no such number, stop. Otherwise, let p now equal this new number (which is the next prime), and repeat from step 3.
# When the algorithm terminates, the numbers remaining not marked in the list are all the primes below n.

require 'prime'

class Sieve

  def initialize(number)
    @number = number
  end

  def primes
    marked = []                             
    range = (2..@number).to_a               # need an array to subtract `marked`?
    range.each do |p|                       
      next if marked.include?(p)            
      break if p**2 > @number               
      (p..@number).each do |number_to_eval|
        next if marked.include?(number_to_eval)
        p_times_two = number_to_eval * 2                 

        marked_number = p_times_two + p
        marked << p_times_two
        marked << marked_number
      end
    end
    range - marked.uniq
  end
end

module BookKeeping
  VERSION = 1
end

