class AddToPromotionCategory < ActiveRecord::Migration[5.1]
  def change
    add_column :promotions , :category , :string
  end
end
