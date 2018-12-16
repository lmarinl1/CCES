class CreateEmpresas < ActiveRecord::Migration[5.2]
  def change
    create_table :empresas do |t|
      t.integer :municipio, null:false
      t.boolean :activo, default:true, null:false
      t.integer :modificador
      t.integer :creador
      t.text :descripcion
      t.string :nombre, null:false
      t.string :nit
      t.integer :nroEmpleados
      t.string :direccion
      t.string :facebook
      t.string :twitter
      t.string :instagram
      t.string :web

      t.timestamps
    end
  end
end
