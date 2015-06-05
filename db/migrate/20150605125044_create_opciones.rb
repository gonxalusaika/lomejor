class CreateOpciones < ActiveRecord::Migration
  def change
    create_table :opciones do |t|
      t.string :nombre
      t.integer :cantidad_elegida
      t.references :encuesta

      t.timestamps null: false
    end
  end
end
