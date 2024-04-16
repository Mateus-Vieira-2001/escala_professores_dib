class AddColumnToRegistration < ActiveRecord::Migration[7.1]
  def change
    add_column :registrations, :active, :boolean
  end
end
