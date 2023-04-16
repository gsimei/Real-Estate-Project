class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.json :footage
      t.json :services
      t.json :leisure
      t.json :social
      t.json :intimate
      t.json :cabinet
      t.json :address
      t.json :primary_date
      t.json :floor
      t.json :infrastructure
      t.json :finality
      t.json :category
      t.json :intention
      t.json :price
      t.json :location
      t.boolean :published
      t.boolean :highlighted
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
