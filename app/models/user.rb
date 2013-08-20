class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :image_url, allow_blank: true, format: { with: %r{\.(gif|jpg|png)\Z}i, message: 'must be a URL for GIF, JPG or PNG image.' }
  has_secure_password
  has_many :task_permissions
  has_many :tasks, :through => :task_permissions
end
