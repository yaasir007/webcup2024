class ChangeReferences < ActiveRecord::Migration[7.1]
  def change
    remove_reference :baskets, :order, index: true, foreign_key: true
    add_reference :orders, :basket, index: true, foreign_key: true
    remove_reference :baskets, :product, index: true, foreign_key: true
    add_reference :baskets, :user, index: true, foreign_key: true
  end
end
