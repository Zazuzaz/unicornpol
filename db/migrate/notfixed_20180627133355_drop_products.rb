# class DropProducts < ActiveRecord::Migration[5.1]
#   def up
#       drop_table :products
#     end

#     def down
#       create_table :products do |t|
#         t.references :merchant
#         t.string :name, null: false
#         t.text :description, null: false
#         t.integer :suggested_price

#         t.timestamps
#       end

#     end
#   end
