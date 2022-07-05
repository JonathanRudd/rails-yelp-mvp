class ChangeNameInRestaurants < ActiveRecord::Migration[6.1]
  def change
    rename_column :restaurants, :phone_number, :phoneNumber
  end
end
