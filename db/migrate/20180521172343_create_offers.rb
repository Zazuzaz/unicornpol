class CreateOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :offers do |t|
      t.text :description, null: false
      t.string :title, null: false
      t.integer :suggested_price, :default => 0, null: false
      t.string :status, :default => "proposed", null: false
      t.references :product, null: false
      t.references :customer, null: false
      t.timestamps
    end
  end
end
