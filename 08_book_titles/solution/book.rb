
  class Book
     attr_reader :title

	def title = (title_new)
          little_words = %w{a an and the in of}
          words = title_new.split(" ")
          words = [words[0].capitalize] + words[1..words.length].each { |elem| 
          if little_words.include?(elem) 
	    elem
	  else 
	    elem.capitalize!
	  end			}
 	  @title = words.join(" ")
	end
  end
