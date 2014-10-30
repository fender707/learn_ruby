  
 def add(a,b)
   a+b
 end

 def subtract(a,b)
   a-b
 end

 def sum(a=[])
   a.empty? ? 0 : a.inject(0) {|i,e| i+e }  
 end
   
