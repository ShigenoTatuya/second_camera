class RenameMakerNameToName < ActiveRecord::Migration[6.1]
  def change
    rename_column :makers, :maker_name, :name
  end
end
