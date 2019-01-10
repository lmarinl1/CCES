class AddPictureToEventos < ActiveRecord::Migration[5.2]
  def change
    add_column :eventos, :picture, :string
  end
end
