class AddColumnsToAuthors < ActiveRecord::Migration[7.1]
  def change
    add_column :authors, :address, :string
    add_column :authors, :contact_nuber, :string
  end
end
