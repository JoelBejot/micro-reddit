class ChangeDataType < ActiveRecord::Migration[7.0]
  change_column(:posts, :user_id, :integer)
end
