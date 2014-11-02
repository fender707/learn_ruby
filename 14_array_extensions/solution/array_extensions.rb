
  class Array
     
    def sum
      res=0 
      if self.empty? then return 0 end
      self.map {|i| res+=i}
      res
    end
    
    def square
      self.map{|n| n*n}
    end

    def square!
      self.each! {|n| n*n}
    end
  
  end
