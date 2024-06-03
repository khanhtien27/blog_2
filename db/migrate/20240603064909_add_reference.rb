class AddReference < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :id_category, :string
  end
end
