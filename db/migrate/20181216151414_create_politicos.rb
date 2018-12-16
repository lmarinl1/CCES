class CreatePoliticos < ActiveRecord::Migration[5.2]
  def change
    create_table :politicos do |t|
      t.integer :municipio
      t.boolean :activo, default:true, null:false
      t.integer :modificador
      t.integer :creador
      t.text :descripcion
      t.string :nombre, null:false
      t.string :apellido, null:false
      t.string :cedula
      t.string :sexo, null:false
      t.string :partido, null:false
      t.string :telefono
      t.string :celular
      t.string :email, null:false, unique:true
      t.string :whatsapp
      t.string :instagram
      t.string :twitter
      t.string :facebook
      t.integer :puntov
      t.string :cNombre
      t.string :cCel1
      t.string :cCel2
      t.string :cTel
      t.string :cWhatsapp
      t.string :cEmail

      t.timestamps
      t.index ["email"], name: "index_politicos_on_email", unique: true
    end
  end
end
