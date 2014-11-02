  
  class Fixnum
    def in_words
      ones = ['zero','one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
      tens = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
      teens = ['ten','eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']  
    if self < 10 then ones[self] else
    #if self > 9 && self < 20 then 
     teens[self-10] end
    end
  end
