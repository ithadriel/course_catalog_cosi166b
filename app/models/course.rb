class Course < ApplicationRecord
  has_many :enrollments
  has_many :users, :through => :enrollments
  has_many :course_subject_links
  has_many :subjects, :through => :course_subject_links
end
