class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products,id: false, primary_key: :id do |t|
      t.string :id
      t.string :name, null: false
      t.integer :quality
      t.text :description, null: true

      t.timestamps
    end
  end
end
