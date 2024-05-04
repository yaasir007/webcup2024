class CreateTables < ActiveRecord::Migration[7.1]
  def change
    create_table :tables do |t|
      t.string :name
      t.integer :number_of_seats

      t.timestamps
    end
  end
end
