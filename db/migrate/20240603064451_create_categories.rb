class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories, id: false, primary_key: :id do |t|
      t.string :id
      t.string :name, null: false
      t.text :description, null: true
      t.integer :quality
      t.timestamps
    end
  end
end
