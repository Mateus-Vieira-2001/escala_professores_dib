class AddColumnToChildRegistration < ActiveRecord::Migration[7.1]
  def change
    add_column :child_registrations, :active, :boolean
  end
end
