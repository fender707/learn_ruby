def reverser
  if block_given? then
    yield.to_s.split.map { |i| i.reverse }.join(" ") 
  end
end

def adder(value = 1)
  yield + value
end

def repeater(value = 1)
   if !value then 
     yield 
   else 
     value.times { yield }
   end
end

