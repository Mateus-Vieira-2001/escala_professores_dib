class CreateTeacherRegistrations < ActiveRecord::Migration[7.1]
  def change
    create_table :teacher_registrations do |t|
      t.string :name
      t.string :email
      t.string :disponibility
      t.boolean :is_assistant_too
      t.string :class_by_age

      t.timestamps
    end
  end
end
