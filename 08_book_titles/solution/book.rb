
  class Book
     attr_accessor :title

	def title=(title_new)
	   words=title_new.split(" ")
	   title_new[0].capitalize
	end
  end
