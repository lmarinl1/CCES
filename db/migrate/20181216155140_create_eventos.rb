class CreateEventos < ActiveRecord::Migration[5.2]
  def change
    create_table :eventos do |t|
      t.integer :zona
      t.boolean :activo, default:true, null:false
      t.date :fecha, null:false
      t.integer :modificador
      t.integer :creador
      t.text :descripcion
      t.string :nombre, null:false
      t.string :direccion

      t.timestamps
    end
  end
end
