class CreateCustomizationCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :customization_categories do |t|
      t.string :bike_element
      t.integer :bike_id

      t.timestamps
    end
  end
end
