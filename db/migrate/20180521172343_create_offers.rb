class CreateOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :offers do |t|
      t.integer :product_id
      t.string :title
      t.text :text
      t.integer :suggested_price
      t.string :status
      t.integer :customer_id
      t.integer :merchant_id

      t.timestamps
    end
  end
end
