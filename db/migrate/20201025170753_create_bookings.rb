class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.datetime :start_date, null: false
      t.datetime :end_date, null: false
      t.text :description, null: false
      t.references :space, null: false, foreign_key: true

      t.timestamps
    end
  end
end
