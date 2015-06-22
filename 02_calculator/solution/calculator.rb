  
 def add(term1,term2)
   term1 + term2
 end

 def subtract(term1,term2)
   term1 - term2
 end

 def sum(numbers)
   numbers.empty? ? 0 : numbers.inject(0) {|result,term| result + term }  
 end

 def multiply(numbers)
   numbers.inject(1) {|result, value| result * value }
 end

 def power(value,degree)
   value**degree
 end  

 def factorial(value)
   value <= 1 ? 1 : value * factorial(value - 1)
 end
    
   
