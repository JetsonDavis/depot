class AddPriceToLineItem < ActiveRecord::Migration[5.2]
  def change
    add_column :line_items, :price, :decimal

    LineItem.all.each do |li|
	 	li.price = li.product.price
	 	puts li.id,li.product.price, li.price
	 	li.save!
	end
  end
end
