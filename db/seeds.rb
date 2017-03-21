# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

instructors = JSON.parse(File.read('instructor.json'))
subjects = JSON.parse(File.read('subject.json'))
courses = JSON.parse(File.read('course.json'))

#load subjects
subjects.each do |subj|
  Subject.create(term:subj["term"], name:subj["name"], abbreviation:subj["abbreviation"], brandeis_id:subj["id"])
end

#load courses
courses.each do |course|
  c = Course.create(name:course["name"], code:course["code"], description:course["description"], independent_study:course["independent_study"])
  course_subjects_array = course["subjects"]
  course_subjects_array.each do |subj|
    c.subjects << Subject.where(brandeis_id: subj["id"])
  end
end

#load instructors
instructors.each do |ins|
  Instructor.create(ins)
end
