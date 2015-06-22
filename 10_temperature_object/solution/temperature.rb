
  class Temperature 
     
    def self.from_celsius(celsius)
      new(:c => celsius)
    end
    
    def self.from_fahrenheit(fahrenheit)
      new(:f => fahrenheit)
    end  

    def initialize(options)
      options.include?(:c) ? @init_temp=(options[:c]) : @init_temp=Temperature.ftoc(options[:f])
    end

    def in_fahrenheit
      Temperature.ctof(@init_temp)
    end  

    def in_celsius
      @init_temp
    end  
  
    def self.ctof(ctemp)
      (ctemp * 9.0 /5.0) +32
    end

    def self.ftoc(ftemp)
      (ftemp - 32) * 5.0 / 9.0
    end
  end
    class Celsius < Temperature
      def initialize(temp)
        super(:c => temp)
      end
    end

    class Fahrenheit < Temperature
      def initialize(temp)
        super(:f => temp)
      end
    end

 
