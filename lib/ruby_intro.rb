# When done, submit this entire file to the autograder.

# Part 1

def sum arr 
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).reduce(0, :+)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.empty?
  (arr.empty? && n.zero?) || arr.permutation(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return false if s=~ /\A[^a-z]/i
  s =~ /\A[^aeiou]/i

end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  is = s.to_i
  if s == "0"
    return true
  elsif /[a-zA-Z^$2-9*]/.match(s)
    return false
  else
    if /^[10]*00$/.match(s) && is % 4 == 0
      return true
    else
      return false
    end
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
	attr_accessor :isbn , :price
    
    def initialize (isbn,price)
        raise ArgumentError,'isbn is empty'  if isbn.empty?
        raise ArgumentError,'price is <= 0'  unless price > 0
        @isbn=isbn 
        @price=price
    end
    
    def price_as_string
        return "$" << '%.2f' % price.to_s 
    end
end
