class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :description
      t.string :video_type
      t.string :link_address
      t.string :file_name
      t.integer :likes
      t.integer :dislikes

      t.timestamps null: false
    end
  end
end
