class AddColumnToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :duration, :string
    add_column :videos, :author, :string
    add_column :videos, :uid, :string
  end
end
