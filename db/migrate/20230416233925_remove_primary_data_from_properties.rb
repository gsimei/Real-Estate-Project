class RemovePrimaryDataFromProperties < ActiveRecord::Migration[7.0]
  def change
    remove_column :properties, :primary_date, :json
  end
end
