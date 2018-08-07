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
    #binding.pry
    #sentence_array = self.split(". ")
    #sentence_array.size
    #sentence_array.each do |phrase|
      #if phrase.question?
      #  phrase.split("? ")
      #elsif phrase.exclamation("! ")
      #  phrase.split("! ")

      #end
    #end

    delimiters = [". ", "? ", "! "]
    sentence_array = self.split(Regexp.union(delimiters))
    sentence_array.size


  end
end

#sentence = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
#binding.pry
