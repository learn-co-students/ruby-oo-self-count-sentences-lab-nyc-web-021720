require 'pry'

class String
  # attr_accessor :sentence
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
    self.split(/\.|\?|\!/).delete_if {|i| i.size < 1}.size
  end
end