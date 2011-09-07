class UserController < ApplicationController

   def index 
      @users_list = User.all 
   end
   
   def create
      begin
         @user_info = {
            :name => params[:name],
            :email_address => params[:email_address],
            :password => params[:password]
         }
         
         User.create @user_info
      rescue
         Rails.logger "[User Controller] Couldn't create the user"
      end
      redirect_to '/users'
   end

end
