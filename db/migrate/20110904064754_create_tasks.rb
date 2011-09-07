class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.string :status
      t.datetime :due_date
      t.datetime :delete_at

      t.timestamps
    end
  end
end
