class RenameCnotentColumnToPosts < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :cnotent, :content
  end
end
