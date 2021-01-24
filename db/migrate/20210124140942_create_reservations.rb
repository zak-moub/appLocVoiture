class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.date :date_reservation
      t.integer :compteur_km
      t.integer :montant
      t.integer :montant_reduit

      t.timestamps
    end
  end
end
