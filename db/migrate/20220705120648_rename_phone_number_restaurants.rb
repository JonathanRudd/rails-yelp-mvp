class RenamePhoneNumberRestaurants < ActiveRecord::Migration[6.1]
  def change
    rename_column :restaurants, :phoneNumber, :phone_number
  end
end
