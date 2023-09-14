class AddColumnsToBookmarks < ActiveRecord::Migration[7.0]
  def change
    add_column :bookmarks, :comment, :string
    add_reference :bookmarks, :movie, foreign_key: true
    add_reference :bookmarks, :list, foreign_key: true
  end
end
