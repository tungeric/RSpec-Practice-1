def echo(anything)
  anything
end

def shout(anything)
  anything.upcase
end

def repeat(anything, number=2)
  result_array = []
  (1..number).each {|x| result_array << anything}
  result_array.join(" ")
end

def start_of_word(anything,num)
  anything[0..num-1]
end

def first_word(sentence)
  sentence.split(" ")[0]
end

def titleize(anything)
  little_words=["and","or","the","over"]
  result_array = anything.split(" ").each_with_index do |word,idx|
      if little_words.include?(word) && idx!=0
      else
        word.capitalize!
      end
  end
  result_array.join(" ")
end
