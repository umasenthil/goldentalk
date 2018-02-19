class AddSkypeIdToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :skypeid, :string
  end
end
