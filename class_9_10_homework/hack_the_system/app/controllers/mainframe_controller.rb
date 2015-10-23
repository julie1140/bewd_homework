class MainframeController < ApplicationController

  def correctpasscode
    @Passcode="461Blow"
  end

  def failure
  end

  def index
    @code=params[:passcode]
    @correct=correctpasscode
    puts @code.class
    @code_i=@code.to_i
    puts @code_i.class
    if @code != @correct
      redirect_to '/mainframe/failure'
    end
  end


end
