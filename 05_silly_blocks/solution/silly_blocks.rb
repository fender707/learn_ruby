def reverser
  if block_given? then b=yield
    c=b.to_s.split
    z=c.map { |i| i.reverse } 
    z.join(" ")
  end
end

def adder(p=@param)
  if p==nil then
       b=yield 
       b+=1
    else 
       b=yield 
       b+=p
  end
end

def repeater(p=@param)
   if p==nil then 
     res = yield 
     #return res if res
   else 
     i=0
     while i!=p
       res=yield 
       i+=1
     end
   end
end

