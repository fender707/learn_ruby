
  class RPNCalculator
    attr_accessor :calculator

    def initialize
      @calculator=[]
    end    

    def push(value)
      @calculator << value.to_f
    end
   
    def plus
        if @calculator.length>=2 then suma=calculator[-1]+calculator[-2] else raise "calculator is empty" end
        @calculator[-2..-1]=suma
    end

    def value
      calculator.last
    end

  end

