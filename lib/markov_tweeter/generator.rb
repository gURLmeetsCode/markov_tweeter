require 'pry'

class MarkovTweeter::Generator
  attr_accessor :graph, :order

def initialize
  @order = 3
  @graph = {}
end


# selected 140 character tweet
def markovIt140
  result = current_gram
  i = 0
  while i < 140 do
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



# selected 280 character tweet

def markovIt280
  result = current_gram
  i = 0
  while i < 280 do
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


# recieve the parsed text file and go through to make n-grams
# def train
#   i = 0
#   while i <= @file.length - @order do
#     gram = @file.substring(i, i + order)
#     if @graph.include?gram
#       @graph[gram] = []
#     else
#       @graph[gram].push(txt.charAt(i + order))
#     end
#     i += 1
#   end
# end


end
