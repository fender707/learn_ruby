def reverser
 if block_given? then b=yield
 c=b.to_s.split
 z=c.map { |i| i.reverse } 
 z.join(" ")
end
end

