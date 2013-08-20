class RemoveAuthorOwnerFromTasks < ActiveRecord::Migration
  def change
    remove_column :tasks, :author
    remove_column :tasks, :owner
  end
end
