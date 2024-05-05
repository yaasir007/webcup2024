class Order < ApplicationRecord
  belongs_to :basket

  def mark_as_delivered!
    update(delivered: true)
  end
end
