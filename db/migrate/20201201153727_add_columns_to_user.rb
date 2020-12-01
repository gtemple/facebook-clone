class AddColumnsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :high_school, :string
    add_column :users, :post_secondary, :string
    add_column :users, :city, :string
    add_column :users, :region, :string
    add_column :users, :country, :string
    add_column :users, :birthday, :date
  end
end
