class AddColorToOpcion < ActiveRecord::Migration
  def change
  	add_column :opciones, :color, :string
  end
end
