class CreateMerchantprofiles < ActiveRecord::Migration[5.1]
  def change
    create_table :merchantprofiles do |t|
      t.string :name
      t.string :email
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
