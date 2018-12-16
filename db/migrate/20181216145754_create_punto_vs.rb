class CreatePuntoVs < ActiveRecord::Migration[5.2]
  def change
    create_table :punto_vs do |t|
      t.string :nombre, null:false
      t.integer :zona
      t.boolean :activo, default:true, null:false
      t.integer :modificador
      t.integer :creador
      t.text :descripcion
      t.string :direccion, null:false
      t.integer :nromesas
      t.integer :nropersonasmesa
      t.integer :hombres
      t.integer :mujeres

      t.timestamps
    end
  end
end
