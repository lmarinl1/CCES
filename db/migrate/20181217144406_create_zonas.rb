class CreateZonas < ActiveRecord::Migration[5.2]
  def change
    create_table :zonas do |t|
      t.string :nombre, null:false
      t.integer :municipio, null:false
      t.boolean :activo, default:true, null:false
      t.integer :modificador
      t.integer :creador
      t.string :lmap
      t.text :descripcion

      t.timestamps
    end
  end
end
