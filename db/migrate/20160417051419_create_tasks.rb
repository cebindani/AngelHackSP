class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :title
      t.text :description
      t.datetime :data_init
      t.datetime :date_end
      t.integer :order
      t.integer :objetivo_id

      t.timestamps null: false
    end
  end
end
