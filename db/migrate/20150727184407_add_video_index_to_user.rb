class AddVideoIndexToUser < ActiveRecord::Migration
  def change
    add_column :users, :video_id, :integer
    add_index :users, :video_id
  end
end
