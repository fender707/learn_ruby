  
   class XmlDocument
     
     def initialize param=false
       @param=param
     end   
 
     def method_missing(method_name)
       res=""
       res<<"<#{method_name}/>"
     end

   end
