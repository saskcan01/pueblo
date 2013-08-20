class CreateTaskPermissions < ActiveRecord::Migration
  def change
    create_table :task_permissions do |t|

      t.timestamps
    end
  end
end
