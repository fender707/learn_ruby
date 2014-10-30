  
 def add(a,b)
   a+b
 end

 def subtract(a,b)
   a-b
 end

 def sum(a=[])
   a.empty? ? 0 : a.each_index {|i| result+=i}  
 end
   
