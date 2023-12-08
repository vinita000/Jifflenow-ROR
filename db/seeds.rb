# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
students_data = [
  { subject_1: 88, subject_2: 53, subject_3: 69, subject_4: 64 },
  { subject_1: 92, subject_2: 86, subject_3: 93, subject_4: 77 },
  { subject_1: 53, subject_2: 59, subject_3: 72, subject_4: 59 },
  { subject_1: 60, subject_2: 52, subject_3: 85, subject_4: 62 },
  { subject_1: 85, subject_2: 53, subject_3: 74, subject_4: 61 },
  { subject_1: 72, subject_2: 91, subject_3: 72, subject_4: 89 },
  { subject_1: 72, subject_2: 71, subject_3: 77, subject_4: 91 },
  { subject_1: 89, subject_2: 60, subject_3: 94, subject_4: 59 },
  { subject_1: 63, subject_2: 61, subject_3: 80, subject_4: 57 },
  { subject_1: 86, subject_2: 84, subject_3: 65, subject_4: 72 },
  { subject_1: 83, subject_2: 75, subject_3: 89, subject_4: 89 },
  { subject_1: 65, subject_2: 63, subject_3: 65, subject_4: 80 },
  { subject_1: 65, subject_2: 63, subject_3: 65, subject_4: 80 },
  { subject_1: 57, subject_2: 56, subject_3: 56, subject_4: 59 },
  { subject_1: 60, subject_2: 52, subject_3: 77, subject_4: 75 },
  { subject_1: 67, subject_2: 56, subject_3: 85, subject_4: 62 },
  { subject_1: 75, subject_2: 84, subject_3: 61, subject_4: 90 },
  { subject_1: 64, subject_2: 53, subject_3: 56, subject_4: 77 },
  { subject_1: 60, subject_2: 51, subject_3: 55, subject_4: 66 },
  { subject_1: 83, subject_2: 70, subject_3: 69, subject_4: 65 },
  { subject_1: 57, subject_2: 76, subject_3: 75, subject_4: 59 },
  { subject_1: 63, subject_2: 84, subject_3: 52, subject_4: 74 },
  { subject_1: 61, subject_2: 64, subject_3: 65, subject_4: 53 },
  { subject_1: 73, subject_2: 83, subject_3: 86, subject_4: 73 },
  { subject_1: 58, subject_2: 67, subject_3: 74, subject_4: 85 },
  { subject_1: 52, subject_2: 53, subject_3: 55, subject_4: 83 },
  { subject_1: 57, subject_2: 81, subject_3: 55, subject_4: 70 },
  { subject_1: 61, subject_2: 68, subject_3: 55, subject_4: 91 },
  { subject_1: 63, subject_2: 68, subject_3: 65, subject_4: 72 },
  { subject_1: 71, subject_2: 63, subject_3: 87, subject_4: 70 },
  { subject_1: 60, subject_2: 65, subject_3: 79, subject_4: 81 },
  { subject_1: 52, subject_2: 92, subject_3: 78, subject_4: 81 },
  { subject_1: 66, subject_2: 65, subject_3: 80, subject_4: 73 },
  { subject_1: 73, subject_2: 51, subject_3: 55, subject_4: 58 },
  { subject_1: 86, subject_2: 80, subject_3: 66, subject_4: 71 },
  { subject_1: 91, subject_2: 69, subject_3: 69, subject_4: 90 },
  { subject_1: 70, subject_2: 78, subject_3: 72, subject_4: 78 },
  { subject_1: 66, subject_2: 94, subject_3: 89, subject_4: 52 },
  { subject_1: 94, subject_2: 52, subject_3: 58, subject_4: 82 },
  { subject_1: 70, subject_2: 51, subject_3: 57, subject_4: 54 },
  { subject_1: 92, subject_2: 90, subject_3: 55, subject_4: 84 },
  { subject_1: 66, subject_2: 81, subject_3: 86, subject_4: 75 },
  { subject_1: 67, subject_2: 54, subject_3: 77, subject_4: 94 },
  { subject_1: 56, subject_2: 80, subject_3: 67, subject_4: 57 },
  { subject_1: 83, subject_2: 72, subject_3: 77, subject_4: 86 },
  { subject_1: 55, subject_2: 79, subject_3: 79, subject_4: 66 },
  { subject_1: 53, subject_2: 57, subject_3: 50, subject_4: 84 },
  { subject_1: 57, subject_2: 76, subject_3: 78, subject_4: 52 },
  { subject_1: 69, subject_2: 51, subject_3: 69, subject_4: 90 },
  { subject_1: 68, subject_2: 72, subject_3: 56, subject_4: 81 },
  { subject_1: 85, subject_2: 63, subject_3: 55, subject_4: 54 }
]
students_data.each do |student_data|
  Student.find_or_create_by(student_data)
end
