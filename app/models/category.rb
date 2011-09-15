class Category < ActiveRecord::Base
  attr_accessible :name, :parent_id, :lft, :rgt, :user_id
  
  has_many :tasks
  belongs_to :user
  
  acts_as_nested_set

end
