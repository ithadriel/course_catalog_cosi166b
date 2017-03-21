class CourseSubjectLink < ApplicationRecord
  belongs_to :course
  belongs_to :subject
end
