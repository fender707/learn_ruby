  
 def add(a,b)
   a+b
 end

 def subtract(a,b)
   a-b
 end

 def sum(a=[])
   a.empty? ? 0 : a.inject(0) {|i,e| i+e }  
 end

  def multiply(a=[])
       a.inject(1) {|i, elem| i * elem }
  end

  def power(a,b)
    a**b
  end  

  def factorial(a)
    a == 0 ? 1 : a * factorial(a-1)
  end
    
   
