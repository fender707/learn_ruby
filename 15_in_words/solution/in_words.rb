  
  class Fixnum
    def in_words
      ones = ['zero','one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
      tens = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
      teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen', 'ten']  
    if self < 10 then ones[self] end

    end
  end
