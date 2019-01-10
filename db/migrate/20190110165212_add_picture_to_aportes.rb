class AddPictureToAportes < ActiveRecord::Migration[5.2]
  def change
    add_column :aportes, :picture, :string
  end
end
