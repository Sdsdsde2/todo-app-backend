# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Task.destroy_all

User.create(first_name: "shane", last_name: "rachal", user_name: "sdsdsde2", password_digest: "shane123")
Task.create(task_title: "Finish Todo App", task_info: "This is a 'test-task' for the todo app.", task_priority: 3)