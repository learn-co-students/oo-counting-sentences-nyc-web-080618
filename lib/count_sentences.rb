require 'pry'

class String

  def sentence?
   if self.end_with?(".")
     return true
   else
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
       return false
     end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
       return false
     end
  end

  def count_sentences

    count = 0
    array = self.split(" ")
    array.each do |word|
      if word.sentence?|| word.question? || word.exclamation?
        count += 1
      end
    end
    count

  end

end
