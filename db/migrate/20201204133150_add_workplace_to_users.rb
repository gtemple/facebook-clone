class AddWorkplaceToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :workplace, :string
  end
end
