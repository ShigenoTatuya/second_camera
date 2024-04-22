class RenameProductNameToName < ActiveRecord::Migration[6.1]
  def change
    rename_column :products, :product_name, :name
  end
end
