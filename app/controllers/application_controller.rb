class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!, :except => [:index]
  
  def index
   #nothing to do
  end
  
end
