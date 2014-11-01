  
  class Dictionary
      attr_accessor :entries


    def initialize
       @entries={}
    end

    def add(para)
      if para.class==String
        then para= {para=>nil}
      end
      para.each { |key,value| @entries[key]=value}
    end

    def keywords
        keys=[]
        @entries.each { |key,value| keys << key }
        return keys
    end

    def include?(animal)
      keywords.include?(animal)
    end
    
    def find(param)
       entries.select { |key,value| key[0...param.length]==param }
                        
    end
     
  end
