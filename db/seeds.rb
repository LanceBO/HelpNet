# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Training.destroy_all
Booking.destroy_all
Ticket.destroy_all
Issue.destroy_all
User.destroy_all

user = User.create(email: "helpnet@gmail.com", password: "123456", first_name: "Xavier", last_name: "Clark")

training = Training.create(title: "Learn how to code", category: "code", description: "Hello World", price: 100)

booking = Booking.create(training: Training.last, user: User.last)

ticket = Ticket.create(status: nil, category: "Email Send", url: "test url", user: User.last)

issues = Issue.create(ticket: Ticket.last, solution: "Test Solution", status: nil, user: User.last)
