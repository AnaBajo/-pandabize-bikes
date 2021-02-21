class CreateCustomizationOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :customization_options do |t|
      t.string :option
      t.integer :customization_category_id

      t.timestamps
    end
  end
end
