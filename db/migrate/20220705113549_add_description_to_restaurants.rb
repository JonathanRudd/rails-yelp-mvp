class AddDescriptionToRestaurants < ActiveRecord::Migration[6.1]
  def change
    change_column :restaurants, :phone_number, :phoneNumber
  end
end
