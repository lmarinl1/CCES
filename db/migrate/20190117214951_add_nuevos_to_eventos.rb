class AddNuevosToEventos < ActiveRecord::Migration[5.2]
  def change
    add_column :eventos, :tipo, :string
    add_column :eventos, :asistentes, :integer
    add_column :eventos, :mensaje, :text 
  end
end
