class Task < ActiveRecord::Base
  validates :title, :author, :owner, :description, :status, presence: true
  validates :priority, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
end
