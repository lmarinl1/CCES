class AddPictureToZonas < ActiveRecord::Migration[5.2]
  def change
    add_column :zonas, :picture, :string
  end
end
