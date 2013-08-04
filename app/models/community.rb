class Community < ActiveRecord::Base
  validates :name, :description, :invite_status, presence: true
  validates :name, uniqueness: true
  validates :invite_status, inclusion: { in: %w(open invite admin_invite), message: "%{value} is not a valid invite status" }
end
