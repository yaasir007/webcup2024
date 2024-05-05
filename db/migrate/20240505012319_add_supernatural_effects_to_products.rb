class AddSupernaturalEffectsToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :supernatural_effects, :text
  end
end
