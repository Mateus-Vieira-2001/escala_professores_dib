json.extract! teacher_registration, :id, :name, :email, :disponibility, :is_assistant_too, :class_by_age, :created_at, :updated_at
json.url teacher_registration_url(teacher_registration, format: :json)
