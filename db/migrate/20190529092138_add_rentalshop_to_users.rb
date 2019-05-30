class AddRentalshopToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :usercord, :string
    add_column :users, :name, :string
    add_column :users, :address, :string
    add_column :users, :birthday, :date
    add_column :users, :deleted, :boolean
  end
end
