  def echo(say)
    say.downcase
  end

  def shout(say)
    say.upcase
  end

  def repeat(say = 'hello', count = 2)
    ([say] * count).join(" ")
  end

  def start_of_word(say = 'hello',symbol)
    say[0...symbol]
  end

  def first_word(say)
    say[0..say.index(" ")-1]
  end

  def titleize(say)
    words = say.split.map { |word| 
      word.length <= 3 || word == "over" ? word.downcase : word.capitalize }
    words[0].capitalize!
    words.join(" ")
  end
  
