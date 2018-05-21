class CreateOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :offers do |t|
      t.references :product
      t.text :description
      t.string :title
      t.integer :suggested_price
      t.string :status
      t.references :customer

      t.timestamps
    end
  end
end
