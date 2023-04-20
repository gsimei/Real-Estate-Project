class ChangeFinalityDataTypeProperties < ActiveRecord::Migration[7.0]
  def change
    change_column :properties, :finality, :string
  end
end
