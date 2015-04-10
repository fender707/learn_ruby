def reverser
  if block_given? then
    yield.to_s.split.map { |i| i.reverse }.join(" ") 
  end
end

def adder(value=@param)
  if value==nil then
    block_number=yield 
    block_number+=1
  else 
    block_number=yield 
    block_number+=value
  end
end

def repeater(value=@param)
   if value==nil then 
     result = yield 
     #return res if res
   else 
     iteration=0
     while iteration!=value
       result=yield 
       iteration+=1
     end
   end
end

