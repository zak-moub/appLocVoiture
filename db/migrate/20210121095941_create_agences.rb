class CreateAgences < ActiveRecord::Migration[6.1]
  def change
    create_table :agences do |t|
      t.string :libelle
      t.string :email
      t.string :telephone
      t.string :adresse
      t.integer :nb_voiture

      t.timestamps
    end
  end
end
