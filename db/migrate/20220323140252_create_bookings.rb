class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.integer :guest_number
      t.date :arrival
      t.date :departure
      t.integer :night_number
      t.integer :total_price
      t.references :room, null: false, foreign_key: true

      t.timestamps
    end
  end
end
