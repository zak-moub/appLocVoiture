class CreateContrats < ActiveRecord::Migration[6.1]
  def change
    create_table :contrats do |t|
      t.date :date_depart
      t.date :date_retour

      t.timestamps
    end
  end
end
