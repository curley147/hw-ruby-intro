# When done, submit this entire file to the autograder.
# Author: Micheal Curley
# Adapted from: https://github.com/veelenga/wil 

# Part 1
def sum arr
  # YOUR CODE HERE
  sum = 0
  arr.each do|x| 
  sum+=x
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  sum = arr.sort.last(2).sum
  return sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.combination(2).each { |pair| return true if pair.inject(:+) == n }
  return false;
end

# Part 2
def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s =~ /\A(?=[^aeiou])(?=[a-z])/i
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return true if s == "0"
	/^[10]*00$/.match(s) != nil
end

# Part 3
class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn
	attr_accessor :price

	def initialize(isbn, price)
		raise ArgumentError, 
			"Illegal argument" if isbn.empty?  or price <= 0
		@isbn = isbn
		@price = price
	end
	
	def price_as_string
		sprintf("$%2.2f", @price)
	end
end
