# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  new_task = Task.new
  new_task.title = Faker::Job.field
  new_task.details = Faker::Quote.famous_last_words
  new_task.completed = [true, false].sample
  new_task.save
end
