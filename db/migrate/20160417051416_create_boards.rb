class CreateBoards < ActiveRecord::Migration
  def self.up
    create_table :boards do |t|
      t.text :title
      t.text :description
      t.integer :user_id

      t.timestamps null: false
    end
  end
   def self.down
    drop_table :boards
  end
end
