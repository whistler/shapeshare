class AddPriceToDesigns < ActiveRecord::Migration
  def change
    add_column :designs, :price, :decimal
  end
end
