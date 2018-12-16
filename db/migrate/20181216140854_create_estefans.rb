class CreateEstefans < ActiveRecord::Migration[5.2]
  def change
    create_table :estefans do |t|
      t.string :cedula, null:false, unique:true
      t.string :nombre, null:false
      t.string :apellido, null:false
      t.date :nacimento
      t.string :cargo, null:false
      t.string :email, null:false, unique:true
      t.integer :creador
      t.boolean :activo, default:true, null:false
      t.integer :modificador
      t.string :cel, null:false
      t.integer :zona
      t.integer :municipio
      t.string :instagram
      t.string :facebook
      t.string :twitter
      t.string :whatsapp
      t.text :descripcion
      t.string :sexo, null:false
      t.integer :puntov

      t.timestamps
      t.index ["cedula"], name: "index_estefans_on_cedula", unique: true
      t.index ["email"], name: "index_estefans_on_email", unique: true
    end
  end
end
