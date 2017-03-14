json.extract! course, :id, :term, :code, :name, :description, :credits, :independent_study, :created_at, :updated_at
json.url course_url(course, format: :json)
