class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.integer :post_id
      t.text :body

      t.timestamps
    end
  end
end
