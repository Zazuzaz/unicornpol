class CreateOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :offers do |t|
      
      t.text :description, null: false
      t.string :title, null: false
      t.integer :suggested_price, :default => 0, null: false
      t.string :status, :default => "proposed", null: false
      
      t.references :product, foreign_key: true, null: false
      t.references :customer, foreign_key: true, null: false

      t.timestamps
    end
  end
end
