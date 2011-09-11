class TaskController < ApplicationController

   def index
      @tasks_list = current_user.tasks.all 
   end
   
   def create
   
      begin
         @task_info = {
            :name => params[:name] ,
            :description => params[:desc] ,
            :due_date => params[:due_date],
            :status => 'Inactive',
            :user_id => current_user.id
         }
         Task.create @task_info
      rescue 
         Rails.logger "[TasK Controller] Error while creating Task"   
      end
      
      redirect_to tasks_path
   end

end
