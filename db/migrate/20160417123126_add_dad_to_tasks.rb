class AddDadToTasks < ActiveRecord::Migration
  def self.up
    add_column :tasks, :dad, :integer
  end

  def self.down
    remove_column :tasks, :dad, :integer
  end
end
