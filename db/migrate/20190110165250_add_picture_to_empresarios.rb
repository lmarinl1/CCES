class AddPictureToEmpresarios < ActiveRecord::Migration[5.2]
  def change
    add_column :empresarios, :picture, :string
  end
end
