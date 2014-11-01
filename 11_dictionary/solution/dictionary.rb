  
  class Dictionary
      attr_accessor :entries


    def initialize
       @entries={}
    end

    def add(para)
      para.each { |key,value| @entries[key]=value}
    end

    def keywords
        @entries.each { |key,value| 
        keys << key }
    end
  end
