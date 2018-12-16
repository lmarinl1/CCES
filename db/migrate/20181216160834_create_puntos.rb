class CreatePuntos < ActiveRecord::Migration[5.2]
  def change
    create_table :puntos do |t|
      t.boolean :activo, default:true, null:false
      t.integer :modificador
      t.integer :creador
      t.text :descripcion
      t.float :puntos, null:false
      t.integer :tipo, null:false
      t.integer :punteado, null:false

      t.timestamps
    end
  end
end
