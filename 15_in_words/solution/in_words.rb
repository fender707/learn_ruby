  
  class Fixnum
    def in_words
      ones = ['zero','one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
      tens = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
      teens = ['ten','eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']  
      probel=" "
    if self < 10 then ones[self] 
     elsif self > 9 && self < 20 then teens[self-10] 
     elsif self > 19 && self < 100 
         if self % 10 == 0 then tens[self/10-1]
                else tens[(self/10)-1] + probel + (self % 10).in_words 
                end
    end
  end
end
