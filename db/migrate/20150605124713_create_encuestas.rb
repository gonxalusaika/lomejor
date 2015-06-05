class CreateEncuestas < ActiveRecord::Migration
  def change
    create_table :encuestas do |t|
      t.string :nombre
      t.text :pregunta

      t.timestamps null: false
    end
  end
end
