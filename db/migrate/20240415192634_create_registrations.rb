class CreateRegistrations < ActiveRecord::Migration[7.1]
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :type_volunteer
      t.date :birthdate

      t.timestamps
    end
  end
end
