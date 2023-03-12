# frozen_string_literal: true

class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.boolean :enabled, default: true
      t.string 'ancestry', collation: 'C', null: false
      t.index 'ancestry'

      t.timestamps
    end
  end
end
