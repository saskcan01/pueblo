class CreateCommunities < ActiveRecord::Migration
  def change
    create_table :communities do |t|
      t.string :name
      t.text :description
      t.boolean :public
      t.string :invite_status

      t.timestamps
    end
  end
end
