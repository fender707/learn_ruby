  `
   class XmlDocument
     
     def initialize param = false
       @param = param
       @levels = 0
     end   
 
     def method_missing(method_name,*args,&block)
       if args.empty? then arguments = {} else arguments = args[0] end
       result = ""
       result << ("  " * @levels) if @param
       result << "<#{method_name}"
       arguments.map { |key,value| result << " #{key}='#{value}'" }
         if block then  
           result << ">"
           result << "\n" if @param
	   @levels += 1 
           result <<  yield 
           @levels -= 1 
           result << ("  " * @levels) if @param
           result << "</#{method_name}>"
           result << "\n" if @param
         else
           result << "/>"
	   result << "\n" if @param
         end 
	result
     end

   end
