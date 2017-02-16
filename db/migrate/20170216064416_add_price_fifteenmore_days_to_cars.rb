class AddPriceFifteenmoreDaysToCars < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :price_fifteenmore_days, :integer
  end
end
