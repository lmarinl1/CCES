class CreateVoluntarios < ActiveRecord::Migration[5.2]
  def change
    create_table :voluntarios do |t|
      t.string :cedula, null:false, unique:true
      t.string :nombre, null:false
      t.string :apellido, null:false
      t.date :nacimiento
      t.string :perfil
      t.string :email, null:false, unique:true
      t.integer :creador
      t.boolean :activo, default:true, null:false
      t.integer :modificador
      t.string :cel
      t.integer :zona
      t.integer :municipio
      t.string :instagram
      t.string :facebook
      t.string :twitter
      t.string :whatsapp
      t.text :descripcion
      t.string :direccion
      t.string :sexo, null:false
      t.integer :puntov
      t.integer :empresa
      t.string :cargo
      t.integer :universidad
      t.string :carrera
      t.integer :votos

      t.timestamps
      t.index ["cedula"], name: "index_voluntarios_on_cedula", unique: true
      t.index ["email"], name: "index_voluntarios_on_email", unique: true
    end
  end
end
