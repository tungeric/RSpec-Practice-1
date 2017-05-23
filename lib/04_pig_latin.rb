def translate(sentence)
  pg_sentence_arr = []
  sentence.split(" ").each {|word|
    pg_sentence_arr << latinize(word)
  }
  pg_sentence_arr.join(" ")
end

#require 'byebug'

def latinize(word)
  #debugger
  result_word=""
  i=0
  to_move=""
  while "aeiou".include?(word[i])==FALSE || word[i-1]=='q' && word[i]=='u'
    to_move+=word[i]
    i+=1
  end
  if i==0
    result_word = "#{word}ay"
  else
    result_word = "#{word[i..word.length-1]}#{to_move}ay"
  end
  result_word
end

if __FILE__ == $PROGRAM_NAME
  puts latinize("hello")
end
