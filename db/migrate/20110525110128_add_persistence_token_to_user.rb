class AddPersistenceTokenToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :persistence_token,:string
  end

  def self.down
  end
end
