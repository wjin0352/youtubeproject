class AddIndexToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :comment_id, :integer
    add_index :videos, :comment_id
  end
end
