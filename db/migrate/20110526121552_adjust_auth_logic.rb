class AdjustAuthLogic < ActiveRecord::Migration
  def self.up
    add_column :users, :crypted_password,:string
    add_column :users, :password_field,:string
  end

  def self.down
  end
end
