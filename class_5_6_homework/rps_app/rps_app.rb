# Lets the user play a game of Rock-Paper-Scissors against the computer
# Computer will always win in this game

require 'sinatra'

# Renders the html file views/index.erb when you go to http://localhost:4567/
get '/' do #this is the homepage route (nothing after /)
  erb :index
end


=begin

Rock > Scissors
Paper > Rock
Scissors > Paper

=end

Choices={
  "R" => "ROCK",
  "P" => "PAPER",
  "S" => "SCISSORS"
}

#Code along in class (will all be displayd in /rps)

get '/rps' do
  @weapons = ["rock", "paper", "scissors"]
  @choice = @weapons[0]
  @randomchoice = @weapons.shuffle.first
  @mychoice = params[:mychoice]

  case @mychoice

  when "rock"
    if @randomchoice=="rock"
        @result="You tie!"
    elsif @randomchoice=="paper"
        @result="You lose!"
    else @randomchoice=="scissors"
        @result="You win!"
      end

  when "paper"
    if @randomchoice=="rock"
      @result="You win!"
    elsif @randomchoice=="paper"
      @result="You tie"
    else @randomchoice=="scissors"
      @result="You lose!"
    end

  when "scissors"
    if @randomchoice=="rock"
      @result="You lose!"
    elsif @randomchoice=="paper"
      @result="You win!"
    else @randomchoice=="scissors"
      @result="You tie!"
    end

  end

  erb :rps
end


# Code along ends

post '/results' do #this is the results route
  @title = 'You Lose, Dumb Human!'
  @vote  = params['weapon']
  case @vote
  when "R"
      @computer="PAPER"
  when "P"
      @computer="SCISSORS"
  when "S"
      @computer="ROCK"
    end
  erb :results
end
