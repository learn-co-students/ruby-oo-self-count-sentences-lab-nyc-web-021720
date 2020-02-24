require 'pry'

class String

  def sentence?
    return self.end_with?(".")
  end

  def question?
    return self.end_with?("?")
  end

  def exclamation?
    return self.end_with?("!")
  end

  def count_sentences
    return self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
  end 
  
end