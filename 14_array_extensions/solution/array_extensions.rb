
  class Array
     
    def sum
      result = 0 
      return 0 if self.empty? 
      self.map {|i| result += i}
      result
    end
    
    def square
      self.map{|value| value * value}
    end

    def square!
      self.map! {|value| value * value}
    end
  
  end
