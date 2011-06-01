class CreateDealHistories < ActiveRecord::Migration
  def self.up
    create_table :deal_histories do |t|
      t.integer :bet_id
      t.string :result,:limit=>10
      t.timestamps
    end
  end

  def self.down
    drop_table :deal_histories
  end
end
