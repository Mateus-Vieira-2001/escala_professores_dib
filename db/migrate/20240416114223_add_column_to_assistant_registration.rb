class AddColumnToAssistantRegistration < ActiveRecord::Migration[7.1]
  def change
    add_column :assistant_registrations, :active, :boolean
  end
end
