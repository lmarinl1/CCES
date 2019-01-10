class AddPictureToMunicipios < ActiveRecord::Migration[5.2]
  def change
    add_column :municipios, :picture, :string
  end
end
