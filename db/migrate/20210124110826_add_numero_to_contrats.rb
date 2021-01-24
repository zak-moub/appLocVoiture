class AddNumeroToContrats < ActiveRecord::Migration[6.1]
  def change
    add_column :contrats, :numero, :string
  end
end
