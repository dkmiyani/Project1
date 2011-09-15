module TaskHelper

   def show_categories
       categories = []         
       nested_set_options (Category)  do |i|
             if i.user_id == current_user.id
               categories << ["#{'-' * i.level} #{i.name}", i.id]
             else
               next
             end
       end
       categories       
   end      
      
end
