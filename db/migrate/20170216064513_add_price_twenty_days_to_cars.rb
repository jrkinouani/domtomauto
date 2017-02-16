class AddPriceTwentyDaysToCars < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :price_twenty_days, :integer
  end
end
