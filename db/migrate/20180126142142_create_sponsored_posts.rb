class CreateSponsoredPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :sponsored_posts do |t|
      t.string :title
      t.text :body
      t.integer :price
      t.belongs_to :topic, foreign_key: true

      t.timestamps
    end
  end
end
