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

#load instructors
instructors.each do |ins|
  Instructor.create(ins)
  sleep(0.1)
end

#load subjects
subjects.each do |subj|
  Subject.create(term:subj["term"], name:subj["name"], abbreviation:subj["abbreviation"])
end

#load courses
courses.each do |course|
  Course.create(term:course["term"], name:course["name"], code:course["code"], description:course["description"], credits:course["credits"], independent_study:course["independent_study"])
end
