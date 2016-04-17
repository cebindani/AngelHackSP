class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.text :title
      t.text :description
      t.datetime :data_init
      t.datetime :date_end
      t.integer :order
      t.integer :board_id

      t.timestamps null: false
    end
  end
  def self.down
    drop_table :tasks
  end
end
