class CreateOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :offers do |t|
      t.text :description
      t.string :title
      t.integer :suggested_price, :default => 0
      t.string :status, :default => "Proposed"
      t.references :customer
      t.references :product
      t.timestamps
    end
  end
end
