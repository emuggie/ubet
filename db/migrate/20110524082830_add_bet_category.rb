class AddBetCategory < ActiveRecord::Migration
  def self.up
    add_column :bets, :cat, :string, :limit =>10,:default=> "unsorted"
  end

  def self.down
  end
end
