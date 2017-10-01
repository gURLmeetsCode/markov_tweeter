class MarkovTweeter::FileImporter
  attr_reader :graph, :order

  def train
    File.open(File.dirname(__FILE__) + '/tweets.txt', "r") do |f|
      f.each_line do |line|
        i = 0
        while i < line.length - @order do
          gram = line.slice(i, i + @order)
          if @graph.include? gram
            @graph[gram] = []
          else
            @graph[gram].push(line.slice(i + @order))
          end
          i += 1
        end
      end
    end
  end




end
