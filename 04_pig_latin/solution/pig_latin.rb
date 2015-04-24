
  def translate(words)
    words.split(' ').map { |word|
      place = word.index(/[aeouiy]/)
      phoneme_length = word.scan(/(qu|sch)/).join.length
      if phoneme_length > 0 
        word_array = word.split(/(qu|sch)/)
        word = word_array[2] + word_array[0] + word_array[1] + 'ay'
      elsif place > 0   
        word = word[place..word.length] + word[0...place] + 'ay'
      else  
        word << 'ay'
      end
    }.join(" ")
  end