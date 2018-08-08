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
    self.split(" ").each do |w|
      if w.end_with?("?") || w.end_with?(".") || w.end_with?("!")
        count += 1
      end
    end
    count
    
  end

end
