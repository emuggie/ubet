class CreateBets < ActiveRecord::Migration
  def self.up
    create_table :bets do |t|
      t.string :title, :limit => 120,:not_null => true
      t.string :detail,:limit => 240
      t.integer :positive,:default => 0
      t.integer :negative,:default => 0
      t.datetime :expire
      t.string :bet_photo_file_name
      t.string :bet_photo_content_type
      t.integer :bet_photo_file_size
      t.timestamps

    end
  end

  def self.down
    drop_table :bets
  end
end
