class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :email
      t.string :provider
      t.string :uid

      t.timestamps null: false
    end
  end
  def self.down
    drop_table :users
  end
end
