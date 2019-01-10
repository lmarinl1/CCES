class AddPictureToEstefans < ActiveRecord::Migration[5.2]
  def change
    add_column :estefans, :picture, :string
  end
end
