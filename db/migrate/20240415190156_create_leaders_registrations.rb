class CreateLeadersRegistrations < ActiveRecord::Migration[7.1]
  def change
    create_table :leaders_registrations do |t|
      t.string :name
      t.date :birthdate
      t.string :disponibility
      t.boolean :is_teacher_too
      t.boolean :is_assistant_too
      t.string :class_by_age

      t.timestamps
    end
  end
end
