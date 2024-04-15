json.extract! child_registration, :id, :name, :birthdate, :guardian, :disease, :observation, :created_at, :updated_at
json.url child_registration_url(child_registration, format: :json)
