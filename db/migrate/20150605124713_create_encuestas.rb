class CreateEncuestas < ActiveRecord::Migration
  def change
    create_table :encuestas do |t|
      t.string :nombre
      t.text :pregunta
      t.references :categoria
      t.integer :respuestas_total
      t.date :fecha_duelo
      t.date :fecha_cierre

      t.timestamps null: false
    end
  end
end
