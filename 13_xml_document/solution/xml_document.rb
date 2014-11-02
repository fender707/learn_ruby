  
   class XmlDocument
     
     def initialize param=false
       @param=param
       @levels=0
     end   
 
     def method_missing(method_name,*args,&block)
       if args.empty? then arguments={} else arguments=args[0] end
       res=""
       i=0
       while i<=@levels && @levels!=0 && @param do 
         res << " "  
         i+=1   
       end
       res << "<#{method_name}"
       arguments.map { |key,value| res << " #{key}='#{value}'" }
         if block then  
           res << ">"
           res << "\n" if @param
	   @levels += 1 
           res <<  yield 
           @levels -= 1 
           res<<"</#{method_name}>"
         else
           res << "/>"
         end
     end

   end
