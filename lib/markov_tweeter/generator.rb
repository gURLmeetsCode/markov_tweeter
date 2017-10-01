require 'pry'

class MarkovTweeter::Generator
  attr_accessor :result, :possibilities, :current_gram, :next_char
  attr_reader :files, :graph, :order


# selected 140 character tweet
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



# selected 280 character tweet

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
