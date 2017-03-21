class CreateCourseSubjectLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :course_subject_links do |t|
      t.belongs_to :course, index: true
      t.belongs_to :subject, index: true

      t.timestamps
    end
  end
end
