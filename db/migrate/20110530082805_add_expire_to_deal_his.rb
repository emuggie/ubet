class AddExpireToDealHis < ActiveRecord::Migration
  def self.up
    add_column :deal_histories,:expire,:datetime
  end

  def self.down
  end
end
