json.extract! registration, :id, :name, :type_volunteer, :birthdate, :created_at, :updated_at
json.url registration_url(registration, format: :json)
