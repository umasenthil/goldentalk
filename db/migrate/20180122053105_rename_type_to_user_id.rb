class RenameTypeToUserId < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :type, :user_id
  end
end
