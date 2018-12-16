class CreateMunicipios < ActiveRecord::Migration[5.2]
  def change
    create_table :municipios do |t|
      t.string :nombre, null:false
      t.string :categoria
      t.string :departamento
      t.boolean :activo, default:true, null:false
      t.integer :modificador
      t.integer :creador
      t.string :web
      t.text :descripcion

      t.timestamps
    end
  end
end
