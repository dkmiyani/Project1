class AddCategoriesIdToTasksTable < ActiveRecord::Migration
  def change
      add_column :tasks, :category_id, :integer
      add_column :categories, :user_id, :integer
  end
end
