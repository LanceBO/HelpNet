# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Booking.destroy_all
Training.destroy_all
Issue.destroy_all
Ticket.destroy_all
User.destroy_all
Solution.destroy_all


user = User.create(email: "helpnet@gmail.com", password: "123456", first_name: "Xavier", last_name: "Clark", helper: false, helper_status: false )

training = Training.create(title: "Learn how to code", category: "code", description: "Hello World", price: 100)

booking = Booking.create(training: Training.last, user: User.last)

ticket = Ticket.create(status: nil, category: "Email Send", url: "test url", user: User.last)
solution = Solution.create(videourl: "https://www.youtube.com/embed/8qXVk6Evx-w", title: "How to attach file to an email", description: "To attach a file to an email, bla bla bla", problems: "Ma pièce jointe jointe ne s'envoie pas")
solution2 = Solution.create(videourl: "https://www.youtube.com/embed/8gRup_Os_Cw", title: "Blablabla", description: "blablabla", problems: "Je n'arrive pas à mettre jointe dans mon e-mail")
