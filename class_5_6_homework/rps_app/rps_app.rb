# Lets the user play a game of Rock-Paper-Scissors against the computer
# Computer will always win in this game

require 'sinatra'

# Renders the html file views/index.erb when you go to http://localhost:4567/
get '/' do
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

post '/results' do
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
