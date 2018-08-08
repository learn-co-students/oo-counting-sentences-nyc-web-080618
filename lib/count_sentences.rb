require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    new_array = self.split(" ")
    count = 0
    new_array.each do |sent|
      if sent.end_with?(".")
        count += 1
      elsif sent.end_with?("!")
        count += 1
      elsif sent.end_with?("?")
        count += 1
      end
    end
    count
    #"This, well, is a sentence. This is too!! And so is this, I think? Woo..."
  end
end
