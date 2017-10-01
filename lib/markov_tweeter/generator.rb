require 'pry'

class MarkovTweeter::Generator
  attr_accessor :result, :possibilities, :current_gram, :next_char, :files, :graph, :order

  def initialize
    @files = []
    @order = 3
    @graph = {}
  end

  def read
    File.readlines(File.dirname(__FILE__) + '/tweets.txt').each do |line|
      @files << line
    end
  end


def train
  i = 0
  while i < @files.length - @order do
    gram = @files.slice(i, i + @order)
    if @graph.include? gram
      @graph[gram] = []
    else
      @graph[gram].push(@files.slice(i + @order))
    end
    i += 1
  end
end



def self.markovIt140(input)
  @result = @current_gram
  i = 0
  while i < input.to_i do
    @current_gram = @files.slice(0, @order)
    @possibilities = @graph[@current_gram]
    if !possibilities
      break
    end
    @next_char = rand(0..@possibilities)
    @result += @next_char
    @current_gram = @result.slice(@result.length - @order, @result.length)
  i += 1
  end
  @result
end




def self.markovIt280(input)
  @result = @current_gram
  i = 0
  while i < input.to_i do
    @current_gram = @files.slice(0, @order)
    @possibilities = @graph[@current_gram]
    if !possibilities
      break
    end
    @next_char = rand(0..possibilities)
    @result += @next_char
    @current_gram = @result.slice(@result.length - @order, result.length)
    i += 1
  end
  @result
end





end
