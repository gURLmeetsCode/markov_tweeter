class MarkovTweeter::FileImporter
  attr_reader :graph, :order, :files

  def initialize
    @files = []
  end

  def read
    File.open(File.dirname(__FILE__) + '/tweets.txt', "r") do |f|
      f.each_line do |line|
        @files ||= line
      end
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


end
