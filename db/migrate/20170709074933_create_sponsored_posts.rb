class CreateSponsoredPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :create_sponsored_posts do |t|
      t.string :title
      t.text :body
      t.integer :price
      t.references :topic, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
