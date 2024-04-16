class CreateSchedules < ActiveRecord::Migration[7.1]
  def change
    create_table :schedules do |t|
      t.string :teacher
      t.string :assistant
      t.string :leader
      t.string :class_by_age
      t.string :lesson
      t.string :period
      t.date :schedule_date
      t.boolean :active

      t.timestamps
    end
  end
end
