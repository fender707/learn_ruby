  
  def translate(word)
      q=word.index("qu") 
      len_mas_word=word.split(' ').length 
      mas_words=word.split(' ') 
      if len_mas_word==1 then
         if q!=nil then
           temp = word.split('').find_all{|elem| elem =="a" || elem =="e" || elem =="o" || elem =="y" || elem =="i"} 
         else
           temp = word.split('').find_all{|elem| elem =="a" || elem =="e" || elem =="u"  || elem =="o" || elem =="y" || elem =="i"} 
	 end
           word[0]==temp[0] ? word << "ay" : word[word.index(temp[0])..word.length] + word[0..word.index(temp[0])-1] + "ay" 
         
      else 
          iter=1
            if q!=nil then
             z=mas_words.map { |slovo| 
             temp = slovo.split('').find_all{|elem| elem =="a" || elem =="e" || elem =="o"|| elem =="y" || elem =="i"} 
             slovo[0]==temp[0] ? slovo<< "ay" : slovo[iter]=slovo[slovo.index(temp[0])..slovo.length] + slovo[0..slovo.index(temp[0])-1] + "ay" 
            }
            else

             z=mas_words.map { |slovo| 
             temp = slovo.split('').find_all{|elem| elem =="a" || elem =="e" || elem =="o" || elem =="u" || elem =="y" || elem =="i"} 
             slovo[0]==temp[0] ? slovo<< "ay" : slovo[iter]=slovo[slovo.index(temp[0])..slovo.length] + slovo[0..slovo.index(temp[0])-1] + "ay" 
}
      
            end
z.join(" ")
      end
end
