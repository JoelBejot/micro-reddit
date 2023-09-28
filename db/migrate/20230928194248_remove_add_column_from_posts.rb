class RemoveAddColumnFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :add_column, :string
  end
end
