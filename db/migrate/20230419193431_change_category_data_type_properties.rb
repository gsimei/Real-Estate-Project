class ChangeCategoryDataTypeProperties < ActiveRecord::Migration[7.0]
  def change
    change_column :properties, :category, :string
  end
end
