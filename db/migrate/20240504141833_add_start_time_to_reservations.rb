class AddStartTimeToReservations < ActiveRecord::Migration[7.1]
  def change
    add_column :reservations, :start_time, :datetime
  end
end
