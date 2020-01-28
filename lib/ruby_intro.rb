# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each do |i|
      sum += i
  end
  return sum
end

def max_2_sum arr
  return 0 if arr.size == 0
  return arr[0] if arr.size == 1
  arr = arr.sort
  return arr[-2] + arr[-1]
end

def sum_to_n? arr, n
  return false if arr.size == 0 && n == 0 
      
 arr.combination(2).each do |x,y|
     return true if x+y == n
 end
 
 return false
end

# Part 2

def hello(name)
return "Hello, " + name
end

def starts_with_consonant? s
  return false if s.size == 0
  return false if !(s[0] =~ /[[:alpha:]]/)
  
if s[0] == 'a' || s[0] == 'e' || s[0] == 'i' || s[0] == 'o' || s[0] == 'u' || s[0] == 'A' || s[0] == 'E' || s[0] == 'I' || s[0] == 'O' || s[0] == 'U' 
    return false
end
return true

end

def binary_multiple_of_4? s
return false if !(s[0] =~ /[10]/)
return true if s.to_i(2)%4 == 0
  return false
end

# Part 3

class BookInStock
  
  def initialize(isbn,price)
      if isbn.length ==0 || price <= 0
          raise ArgumentError
      end
      @isbn = isbn
      @price = price
      
  end
  
  def isbn
    @isbn
  end
  
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price 
    @price
  end
  
  def price=(price)
    @price = price
  end
  
  def price_as_string
      return "$" + '%.2f'%@price
  end
end

