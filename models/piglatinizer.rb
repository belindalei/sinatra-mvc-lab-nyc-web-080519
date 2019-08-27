class PigLatinizer

  def piglatinize(user_text) 
    words = user_text.split(" ")
    latin_words = words.map {|word| piglatinize_word(word)}.join(" ")
  end

  def piglatinize_word(word)
    #first letter is a vowel
    return word + "way" if "aeiouAEIOU".include?(word[0])
      #first letter if a consonant 
      to_move = ""
      word.each_char.with_index do |char, i|
        break if "aeiou".include?(word[i])
          to_move += word[i]
      end

      (word.slice(to_move.length..-1)+to_move+"ay") #will give EAD of BREAD 

  end


  
end