class AddHoraToEventos < ActiveRecord::Migration[5.2]
  def change
    add_column :eventos, :hora, :time
  end
end
