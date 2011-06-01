class AddEmailToUser < ActiveRecord::Migration
  def self.up
    add_column :users,:email,:string,:limit=>20
  end

  def self.down
  end
end
