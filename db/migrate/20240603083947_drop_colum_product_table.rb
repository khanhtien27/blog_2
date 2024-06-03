class DropColumProductTable < ActiveRecord::Migration[7.1]
  def change
    remove_column :products, :id_category
  end
end
