class CreateMilitantes < ActiveRecord::Migration[5.2]
  def change
    create_table :militantes do |t|
      t.string :nombre
      t.string :apellido
      t.string :cedula
      t.date :fechaexp
      t.string :sexo
      t.date :nacimiento
      t.integer :creador
      t.integer :modificador
      t.boolean :activo
      t.string :ocupacion
      t.string :profesion
      t.string :email
      t.string :cel
      t.string :tel
      t.integer :municipio
      t.integer :puntov
      t.integer :zona

      t.timestamps
    end
  end
end
