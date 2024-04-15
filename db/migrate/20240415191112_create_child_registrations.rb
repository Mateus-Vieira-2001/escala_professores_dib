class CreateChildRegistrations < ActiveRecord::Migration[7.1]
  def change
    create_table :child_registrations do |t|
      t.string :name
      t.date :birthdate
      t.string :guardian
      t.string :disease
      t.string :observation

      t.timestamps
    end
  end
end
