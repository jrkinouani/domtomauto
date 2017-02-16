class AddPriceMonthDaysToCars < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :price_month_days, :integer
  end
end
