class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :author
      t.string :owner
      t.text :description
      t.string :status
      t.integer :priority
      t.boolean :private

      t.timestamps
    end
  end
end
