  
   class XmlDocument
     
     def initialize param=false
       @param=param
     end   
 
     def method_missing(method_name,*args,&block)
       if args.empty? then arguments={} else arguments=args[0] end
       res=""
       res<<"<#{method_name}"
       arguments.map { |key,value| res << " #{key}='#{value}'" }
         if block then  
           res << ">" + yield 
         res<<"</#{method_name}>"
         else
       res << "/>"
         end
     end

   end
