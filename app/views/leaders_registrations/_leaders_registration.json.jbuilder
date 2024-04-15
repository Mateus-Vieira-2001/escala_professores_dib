json.extract! leaders_registration, :id, :name, :birthdate, :disponibility, :is_teacher_too, :is_assistant_too, :class_by_age, :created_at, :updated_at
json.url leaders_registration_url(leaders_registration, format: :json)
