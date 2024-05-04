class CreateBasketItems < ActiveRecord::Migration[7.1]
  def change
    create_table :basket_items do |t|
      t.integer :quantity
      t.references :basket, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
