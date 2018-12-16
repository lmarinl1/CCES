class CreateAportes < ActiveRecord::Migration[5.2]
  def change
    create_table :aportes do |t|
      t.boolean :activo, default:true, null:false
      t.integer :modificador
      t.integer :creador
      t.text :descripcion
      t.string :nombre, null:false

      t.timestamps
    end
  end
end
