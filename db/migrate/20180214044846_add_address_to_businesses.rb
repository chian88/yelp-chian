class AddAddressToBusinesses < ActiveRecord::Migration[5.1]
  def change
    add_column :businesses, :address, :string
  end
end
