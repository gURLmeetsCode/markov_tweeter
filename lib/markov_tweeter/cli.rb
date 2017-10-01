class MarkovTweeter::CLI
  def call
    start
  end

  def greeting
    puts ""
    puts "************* Welcome to Markov's Tweeter! *************"
    puts ""
    puts "Generate a 140 or 280 character tweet to post to Twitter."
    puts ""
    puts ""
  end



def start
    greeting
    input = nil
    while input != "exit"
      puts ""
      puts "How long do you want you tweet to be? Type 140 or 280"
      puts ""
      puts "Enter exit to end the program."
      puts ""
      input = gets.strip
      if input == "greeting"
        greeting
      elsif input.to_i == 140
        MarkovTweeter::Generator.markovIt140(input)
      elsif input.to_i == 280
        MarkovTweeter::Generator.markovIt140(input)
        else
          puts "Sorry, im not sure we can complete your request. Type greeting to start over."
        end
      end
    end
    puts "Remember to Tweet responsibly!"
  end
end
