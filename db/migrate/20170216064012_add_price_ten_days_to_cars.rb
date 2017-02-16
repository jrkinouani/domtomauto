class AddPriceTenDaysToCars < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :price_ten_days, :integer
  end
end
