class ApplicationController < ActionController::Base
  protect_from_forgery

  def timestamp
    cache_briefly
    render :text => Time.now
  end

  def cache_briefly
    return unless Rails.env == "production"
    expires_in 1.minute, :public => true
  end
end
