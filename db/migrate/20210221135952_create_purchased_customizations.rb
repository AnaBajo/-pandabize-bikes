class CreatePurchasedCustomizations < ActiveRecord::Migration[6.0]
  def change
    create_table :purchased_customizations do |t|
      t.integer :order_id
      t.integer :customization_option_id

      t.timestamps
    end
  end
end
