class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.integer :car_id
      t.datetime :at_end
      t.datetime :at_start
      t.integer :pay

      t.timestamps
    end
  end
end
