class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :cnotent
      t.string :img
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
