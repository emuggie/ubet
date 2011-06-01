class CreateRefereeHistories < ActiveRecord::Migration
  def self.up
    create_table :referee_histories do |t|
      t.integer :bet_id
      t.integer :user_id
      t.string :decision,:limit=>10,:default => "abstain"
      t.string :reason,:limit=>120
      t.timestamps
    end
  end

  def self.down
    drop_table :referee_histories
  end
end
