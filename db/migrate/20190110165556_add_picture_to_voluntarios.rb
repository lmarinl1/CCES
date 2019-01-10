class AddPictureToVoluntarios < ActiveRecord::Migration[5.2]
  def change
    add_column :voluntarios, :picture, :string
  end
end
