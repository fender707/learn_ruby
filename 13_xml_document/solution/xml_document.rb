  
   class XmlDocument
     
     def initialize param=false
       @param=param
     end   
 
     def method_missing(method_name,*args)
       if args.empty? then arguments={} else arguments=args[0] end
       res=""
       res<<"<#{method_name}"
       arguments.map { |key,value| "#{key}='#{value}'" }
       res << "/>"
     end

   end
