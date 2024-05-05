class AddDetailsToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :detailed_description, :text
    add_column :products, :ingredients, :text
    add_column :products, :nutritional_info, :string
    add_column :products, :chef_note, :text
  end
end
