class AddIndexToUser < ActiveRecord::Migration
  def change
    add_column :users, :subscriber_id, :integer
    add_index :users, :subscriber_id
  end
end
