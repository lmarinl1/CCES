class AddPictureToUniversidads < ActiveRecord::Migration[5.2]
  def change
    add_column :universidads, :picture, :string
  end
end
