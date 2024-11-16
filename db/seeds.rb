# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

student = Student.create(
  first_name:  'Geethika',
  last_name: 'Ponnada',
  email: 'Geethika@gmail.com'
)
student = Student.new(
  first_name:  'Mokshitha',
  last_name: 'Ponnada',
  email: 'Mokshitha@gmail.com'
)

student.save

20.times do |i|
  puts "Creatig students #{i+1}"
  Student.create(
    first_name: "Student #{i+1}",
    last_name: "Student #{i+1}",
    email: "studet#{i+1}@bootcamp.com"
  )
end
