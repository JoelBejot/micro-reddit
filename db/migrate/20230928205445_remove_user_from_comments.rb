class RemoveUserFromComments < ActiveRecord::Migration[7.0]
  def change
    remove_column :comments, :user, :string
  end
end
