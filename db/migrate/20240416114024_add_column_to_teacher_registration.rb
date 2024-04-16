class AddColumnToTeacherRegistration < ActiveRecord::Migration[7.1]
  def change
    add_column :teacher_registrations, :active, :boolean
  end
end
