# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.create( { first_name: "Jimmy",
                       last_name: "Wong",
                       email: "jimmy@example.com",
                       password: "abc123",
                       password_confirmation: "abc123",
                       admin: true} )

designer = User.create( { first_name: "Design",
                          last_name: "Last",
                          email: "design@example.com",
                          password: "abc123",
                          password_confirmation: "abc123",
                          designer: true })