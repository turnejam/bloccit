class CreateSponsoredPos < ActiveRecord::Migration[5.1]
  def change
    create_table :sponsored_pos do |t|
      t.string :title
      t.text :body
      t.integer :price
      t.integer :topic_id

      t.timestamps
    end
    add_index :sponsored_pos, :topic_id
  end
end
