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
        puts "What job would you like more information on? Type number"
        puts ""
        puts "Enter list to see the jobs again."
        puts "Enter exit to end the program."
        puts ""
        input = gets.strip
        if input == "greeting"
          greeting
        elsif input.to_i == 140
          if input = MarkovTweeter::Generator.markovIt140(input)
          end
        elsif input.to_i == 280
          if job = MarkovTweeter::Generator.markovIt280(input)
          else
            puts "Sorry, im not sure we have what you are looking for. Type list to see the list of jobs again."
          end
        end
      end
      puts "Goodluck with your job search!"
    end

end
