class CreateForms < ActiveRecord::Migration[5.2]
  def change
    create_table :forms do |t|
      t.integer :creador, null: false
      t.integer :modificador, null: false
      t.integer :evento, null: false
      t.string :nombre
      t.string :celular
      t.string :correo
      t.string :empresa
      t.text :descripcion
 
      t.timestamps
    end
  end
end
