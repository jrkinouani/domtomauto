class AddPriceFifteenDaysToCars < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :price_fifteen_days, :integer
  end
end
