class HomeController < ApplicationController
  def index
    session[:cookies_accepted] = nil
  end
end
