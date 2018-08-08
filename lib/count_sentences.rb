require 'pry'

class String

  def sentence?
    if self[-1] == "."
      return true
    else
      return false
    end
  end

  def question?
    if self[-1] == "?"
      return true
    else
      return false
    end
  end

  def exclamation?
    if self[-1] == "!"
      return true
    else
      return false
    end
  end

  def count_sentences
    counter = 0
    empty_array = self.split

    empty_array.each do |instance_of_array|
      if instance_of_array.sentence? == true
        counter +=1
      elsif instance_of_array.question? == true
        counter +=1
      elsif instance_of_array.exclamation? == true
        counter +=1
      end
    end
    return counter
  end
end
