class ChangeLimitations < ActiveRecord::Migration[6.0]
  def change
    remove_column :limitations, :first_customization_id
    remove_column :limitations, :second_customization_id
    add_reference :limitations, :customization_categories, index:true

    add_reference :limitations, :customization_options, index:true

    add_column :limitations, :allowed_options_ids, :integer, array: true, default: []
  end
end
