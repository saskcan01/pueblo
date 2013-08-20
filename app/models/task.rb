class Task < ActiveRecord::Base
  validates :title, :author, :owner, :description, :status, presence: true
  validates :priority, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
  has_many :task_permissions
  has_many :users, :through => :task_permissions
end
