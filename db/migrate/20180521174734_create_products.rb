class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.belongs_to :merchant, foreign_key: 'merchant_id'
      t.string :name
      t.text :description
      t.integer :suggested_price

      t.timestamps
    end
  end
end
