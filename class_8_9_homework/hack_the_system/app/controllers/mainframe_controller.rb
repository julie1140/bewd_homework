class MainframeController < ApplicationController

  def correctpasscode
    @Passcode="461Blow"
  end

  def failure
  end

  def index
    @code=params[:passcode]
    @correct=correctpasscode
    if @code != @correct
      redirect_to '/mainframe/failure'
    end
  end


end
