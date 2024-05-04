class AddCoordinatesToOrders < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :longitude, :float
    add_column :orders, :latitude, :float
  end
end
