
  class Temperature 
     
    def self.from_celsius(celsius)
        new(:c =>celsius)
    end
    
    def self.from_celsius(fahrenheit)
        new(:f =>fahrenheit)
    end  

    def initialize(options={})
       options.include?(:c) ? @init_temp=Temperature.ctof(options[:c]) : @init_temp=(options[:f])
    end

    def in_fahrenheit
      @init_temp
    end  

    def in_celsius
      Temperature.ftoc(@init_temp)
    end  
  
    def self.ctof(ctemp)
    (ctemp * 9.0 /5.0) +32
    end

    def self.ftoc(ftemp)
    (ftemp - 32) * 5.0 / 9.0
    end

  end
