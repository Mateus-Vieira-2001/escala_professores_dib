class CreateAssistantRegistrations < ActiveRecord::Migration[7.1]
  def change
    create_table :assistant_registrations do |t|
      t.string :name
      t.date :birthdate
      t.string :class_by_age
      t.boolean :is_teacher_too
      t.string :disponibility

      t.timestamps
    end
  end
end
