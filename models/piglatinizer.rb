class PigLatinizer

    def piglatinize(phrase)

    a = phrase.split(' ')
    b = a.map {|word| piglatinize_word(word)}
    b.join(' ')
    end 
  
  def piglatinize_word(word)
  
    if ["a", "A", "I", "E", "O", "U", "e", "i", "o", "u"].include?(word[0])
  
      return "#{word}way"
    else 
      word_array = word.split('')
      loop do 
          word_array << word_array.shift 
  
          break if word_array[0]=="a" || word_array[0]=="A" || word_array[0] == "e" || word_array[0]=="E" ||word_array[0]=="i" || word_array[0]=="I" ||word_array[0]=="o" || word_array[0]=="O" ||word_array[0]=="u" || word_array[0]=="U"
      end  
    end 

    return word_array.join('')+"ay"
  end 

end 