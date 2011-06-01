class CreateBetHistories < ActiveRecord::Migration
  def self.up
    create_table :bet_histories do |t|
      t.integer :user_id
      t.integer :bet_id
      t.integer :point
      t.string  :type
      t.timestamps
    end
  end

  def self.down
    drop_table :bet_histories
  end
end
