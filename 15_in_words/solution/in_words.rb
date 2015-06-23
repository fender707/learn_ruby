module Words  
HUNDR = {
   100      => "hundred",
   1000     => "thousand",
   1000000  => "million",
   1_000_000_000 => "billion",
   1_000_000_000_000 => "trillion",
}

    def in_words
      ones = ['zero','one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
      tens = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
      teens = ['ten','eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']  

      space=" "
      if self < 10 then 
        ones[self] 
      elsif self > 9 && self < 20 then 
        teens[self-10] 
      elsif self > 19 && self < 100 
        if self % 10 == 0 then 
          tens[self/10-1]
        else 
          tens[(self/10)-1] + space + (self % 10).in_words 
        end
      else
        max_num = HUNDR.keys.take_while { |i| i <= self}.last
        first = (self / max_num).in_words + space + HUNDR[max_num]
        if (self % max_num) != 0
          first + space + (self % max_num).in_words
        else
          first
        end    
      end
   end
end
#end


class Fixnum
  include Words
end
class Bignum
  include Words
end
