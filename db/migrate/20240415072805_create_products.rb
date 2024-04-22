class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :product_name, null: false
      t.integer :price
      t.string :thumbnail
      t.date :release_date
      t.integer :price_range, null: false, default: 0
      t.integer :photograph_aim, null:false, default: 0
      t.references :maker, foreign_key: { on_delete: :restrict, on_update: :restrict }
      t.references :product_type, foreign_key: { on_delete: :restrict, on_update: :restrict }

      t.timestamps
    end
  end
end
