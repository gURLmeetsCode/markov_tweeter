require 'pry'

class MarkovTweeter::Generator
  attr_accessor :graph, :order, :result, :possibilities, :current_gram, :next_char, :files


# selected 140 character tweet
def self.markovIt140(input)
  @result = @current_gram
  i = 0
  while i < input do
    @current_gram = text.slice(0, @order)
    @possibilities = @graph[@current_gram]
    if !possibilities
      break
    end
    @next_char = rand(0..possibilities)
    @result += @next_char
    @current_gram = @result.slice(@result.length - @order, @result.length)
  i += 1
  end
  @result
end



# selected 280 character tweet

def self.markovIt280(input)
  result = current_gram
  i = 0
  while i < input do
    current_gram = text.substring(0, @order)
    possibilities = @graph[current_gram]
    if !possibilities
      break
    end
    next_char = rand(0..possibilities)
    result += next_char
    current_gram = result.substring(result.length - @order, result.length)
    i += 1
  end
  result
end





end
