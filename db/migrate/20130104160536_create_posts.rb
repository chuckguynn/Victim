class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :crime
      t.text :details
      t.integer :user_id

      t.timestamps
    end
  end
end
