class AddPictureToPoliticos < ActiveRecord::Migration[5.2]
  def change
    add_column :politicos, :picture, :string
  end
end
