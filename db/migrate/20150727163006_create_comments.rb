class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.integer :likes
      t.integer :dislikes

      t.timestamps null: false
    end
  end
end
