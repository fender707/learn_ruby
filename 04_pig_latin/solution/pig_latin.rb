  
  def translate(word)
    temp = word.split('').find_all {|element| element == "a" || element == "e" || element == "o" || element == "y" || element == "i"}
    temp_with_u = word.split('').find_all { |element| element == "a" || element == "e" || element == "o" || element == "u" || element == "y" || element == "i"}
    unique_symbol=word.index("qu") 
    if word.split(' ').length==1 then
      if unique_symbol!=nil then
        temp 
      else
        temp_with_u
      end
        word[0]==temp[0] ? word << "ay" : word[word.index(temp[0])..word.length] + word[0..word.index(temp[0])-1] + "ay" 
         
    else 
      iteration=1
      if unique_symbol!=nil then
        translates=word.split(' ').map { |slovo| 
          temp = slovo.split('').find_all{|elem| elem =="a" || elem =="e" || elem =="o"|| elem =="y" || elem =="i"} 
          slovo[0]==temp[0] ? slovo<< "ay" : slovo[iteration]=slovo[slovo.index(temp[0])..slovo.length] + slovo[0..slovo.index(temp[0])-1] + "ay" 
        }
      else
        translates=word.split(' ').map { |slovo| 
        temp = slovo.split('').find_all{|elem| elem =="a" || elem =="e" || elem =="o" || elem =="u" || elem =="y" || elem =="i"} 
        slovo[0]==temp[0] ? slovo<< "ay" : slovo[iteration]=slovo[slovo.index(temp[0])..slovo.length] + slovo[0..slovo.index(temp[0])-1] + "ay" 
        }
      
      end
  translates.join(" ")
    end
end
