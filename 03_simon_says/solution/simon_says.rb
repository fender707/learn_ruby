  def echo(say)
    say.downcase
  end

  def shout(say)
    say.upcase
  end

  def repeat(say='hello', count=0)
    count == 0 ? ((say + " ") * 2).rstrip : ((say + " ") * count).rstrip
  end

  def start_of_word(say='hello',symbol=1)
    symbol==1 ? say[symbol-1] : say[0..symbol-1]
  end

  def first_word(say)
    say[0..say.index(" ")-1]
  end

  def titleize(say)
    words=say.split.map{ |i| i.length<=3||i=="over" ? i.downcase : i.capitalize }
    words[0].capitalize!
    words.join(" ")
  end
  
OD