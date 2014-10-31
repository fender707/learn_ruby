
  class Timer
    attr_accessor :seconds
     def initialize
       @seconds=0
     end

     def time_string
       hours=@seconds/3600
       minutes=@seconds%3600/60
       sec=@seconds%3600%60

       hours.to_s+':'+minutes.to_s+':'+seconds.to_s
     end
  end
