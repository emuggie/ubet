class CorrentCommentName < ActiveRecord::Migration
  def self.up
    add_column :comments,:comment,:string,:limit=>120
    remove_column :comments,:commnet
  end

  def self.down
  end
end
