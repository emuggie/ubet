class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :bet_id
      t.integer :user_id
      t.string :user_name, :limit => 20
      t.string :user_photo_url
      t.string :commnet, :limit =>120
      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
