json.extract! assistant_registration, :id, :name, :birthdate, :class_by_age, :is_teacher_too, :disponibility, :created_at, :updated_at
json.url assistant_registration_url(assistant_registration, format: :json)
