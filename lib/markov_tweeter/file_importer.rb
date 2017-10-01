class MarkovTweeter::FileImporter
  attr_reader :graph, :order

  def train
    File.open(File.dirname(__FILE__) + '/tweets.txt', "r") do |f|
      f.each_line do |line|
        puts "#{line}"
      end
    end
  end




end
