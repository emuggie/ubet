class AddPointToBet < ActiveRecord::Migration
  def self.up
    add_column :bets,:points,:integer,:default=>0
  end

  def self.down
  end
end
