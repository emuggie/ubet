class AddUserInBet < ActiveRecord::Migration
  def self.up
    add_column :bets,:user_id,:integer
  end

  def self.down
  end
end
