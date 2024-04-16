class AddColumnToLeadersRegistration < ActiveRecord::Migration[7.1]
  def change
    add_column :leaders_registrations, :active, :boolean
  end
end
