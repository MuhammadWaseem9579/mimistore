class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.boolean :enabled, default: true
      t.decimal :price, precision: 10, scale: 2
      t.text :description
      t.text :available_sizes, array: true, default: []
      t.integer :category_id

      t.timestamps
    end
  end
end
