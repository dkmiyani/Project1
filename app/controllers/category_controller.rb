class CategoryController < ApplicationController

   def create      
      @new_category = {
         :name => params[:name],
         :user_id => current_user.id
      }
      
      begin
         label = Category.create! @new_category
          
         if params[:children] && params[:children] == "yes"
            parent_category = Category.find params[:parent_id]
            label.move_to_child_of parent_category
         end
         flash[:notice] = "Successfully created Category"
         
      rescue Exception => ex
         Rails.logger.error "Cannot create Category #{ex}"
         flash[:alert] = "Cannot create Category #{ex}"
      end
      
      redirect_to tasks_path
   end
end
