class Subject < ApplicationRecord
  has_many :course_subject_links
  has_many :courses, :through => :course_subject_links
end
