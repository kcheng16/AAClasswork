class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :url
      t.string :content
      t.integer :sub_id, null: false
      t.integer :creator_id, null: false
      t.timestamps
    end

    add_index :posts, :sub_id, unique: true
    add_index :posts, :creator_id, unique: true
  end
end
