class AddPictureToPuntoVs < ActiveRecord::Migration[5.2]
  def change
    add_column :punto_vs, :picture, :string
  end
end
