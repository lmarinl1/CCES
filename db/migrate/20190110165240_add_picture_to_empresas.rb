class AddPictureToEmpresas < ActiveRecord::Migration[5.2]
  def change
    add_column :empresas, :picture, :string
  end
end
