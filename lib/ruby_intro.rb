# frozen_string_literal: true

# Part 1

def sum(arr)
	arr.sum
end

def max_2_sum(arr)
  #Using sum method and max will choose 2 elem
  arr.max(2).sum
end

def sum_to_n?(arr, number)
  #comparing sum with two elem from combination method
  arr.combination(2).select { |sel_num| sel_num.sum == number }.any?
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(string)
  # regex means it is consonant 
  /^[^aeiou\W]/i.match(string) == nil ? false : true
end

def binary_multiple_of_4?(string)
  return true if string == "0"
	/^[10]*00$/.match(string) != nil
end

# Part 3

# Object representing a book
class BookInStock
  attr_writer :isbn,:price
	attr_reader :isbn,:price

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
