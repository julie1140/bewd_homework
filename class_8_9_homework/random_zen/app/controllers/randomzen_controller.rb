class RandomzenController < ApplicationController
  def index
   @quote=HTTParty.get("https://api.github.com/zen").parsed_response
   @words=@quote.split.join("+")
   puts @words #debugging
   puts @words.class #debugging
  end

  def about
  end
end
