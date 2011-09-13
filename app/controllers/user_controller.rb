class UserController < ApplicationController

   def show 
      @users_list = User.all 
   end
   
end
