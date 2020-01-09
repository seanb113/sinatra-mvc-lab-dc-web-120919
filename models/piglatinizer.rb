class PigLatinizer

    def piglatinize_phrase(phrase)

    a = phrase.split(' ')
    b = a.map {|word| piglatinize(word)}
    b.join(' ')
    end 
  
  def piglatinize(word)
  
    if ["a", "e", "i", "o", "u"].include?(word[0])
  
      return "#{word}way"
    else 
      word_array = word.split('')
      loop do 
          word_array << word_array.shift 
  
          break if word_array[0]=="a" || word_array[0] == "e" ||word_array[0]=="i" ||word_array[0]=="o" ||word_array[0]=="u"
      end  
    end 

    return word_array.join('')+"ay"
  end 

end 