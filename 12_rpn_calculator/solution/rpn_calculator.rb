
  class RPNCalculator
    attr_accessor :calculator

    def initialize
      @calculator = []
    end    

    def push(value)
      @calculator << value.to_f
    end
   
    def plus
      if @calculator.length >= 2 then 
        suma = calculator[-2] + calculator[-1] 
      else 
        raise "calculator is empty" 
      end
      @calculator[-2..-1] = suma
    end

    def minus
      if @calculator.length >= 2 then 
        minus = calculator[-2] - calculator[-1] 
      else 
        raise "calculator is empty" 
      end
      @calculator[-2..-1] = minus
    end

    def divide
        if @calculator.length >= 2 then 
          divide = calculator[-2]/calculator[-1] 
        else 
          raise "calculator is empty" 
        end
        @calculator[-2..-1] = divide
    end

    def times
      if @calculator.length >= 2 then 
        times=calculator[-2] * calculator[-1] 
      else 
        raise "calculator is empty" 
      end
      @calculator[-2..-1] = times
    end

    def value
      calculator.last
    end

    def tokens(param)
      param.split.map { |i| i=='+'||i=='-'||i=='*'||i=='/' ? i.to_sym : i.to_f}
    end

    def evaluate(str)
      str.split.map { |i| 
      if i=='+' then plus
      elsif i=='-' then minus
      elsif i=='/' then divide
      elsif i=='*' then times
      else push(i)
      end  
      }	
      value
    end
  end

