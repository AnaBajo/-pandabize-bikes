class EditLimitations < ActiveRecord::Migration[6.0]
  def change
    remove_column :limitations, :customization_categories_id
    remove_column :limitations, :customization_options_id

    add_reference :limitations, :customization_category, index:true
    add_reference :limitations, :customization_option, index:true
  end
end
