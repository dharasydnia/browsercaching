class ApplicationController < ActionController::Base
  protect_from_forgery

  def timestamp
    render :text => Time.now
  end
end
